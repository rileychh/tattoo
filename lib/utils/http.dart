import 'dart:developer';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_redirect_interceptor/dio_redirect_interceptor.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

// Interceptor to convert HTTP requests to HTTPS
class HttpsInterceptor extends Interceptor {
  HttpsInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.uri.scheme == 'http') {
      final httpsUri = options.uri.replace(scheme: 'https');
      options.path = httpsUri.toString();
    }
    handler.next(options);
  }
}

/// Interceptor to filter out invalid Set-Cookie headers from responses.
///
/// The i-School Plus service sets cookies with invalid names, causing parsing errors.
class InvalidCookieFilter extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final setCookieHeaders = response.headers[HttpHeaders.setCookieHeader];
    if (setCookieHeaders == null || setCookieHeaders.isEmpty) {
      handler.next(response);
      return;
    }

    final validCookies = <String>[];
    for (final header in setCookieHeaders) {
      try {
        Cookie.fromSetCookieValue(header);
        validCookies.add(header);
      } on FormatException {
        // Ignore invalid cookie
        debugPrint('Filtered invalid Set-Cookie header: $header');
      }
    }
    response.headers.set(HttpHeaders.setCookieHeader, validCookies);

    handler.next(response);
  }
}

/// One-line log [Interceptor] for requests and responses.
class LogInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final method = response.requestOptions.method;
    final uri = response.requestOptions.uri;
    final parameters = response.requestOptions.queryParameters.length;
    final body = response.requestOptions.data.toString();

    final requestLog = [
      method,
      "${uri.origin}${uri.path}",
      if (parameters > 0) "$parameters param${parameters != 1 ? 's' : ''}",
      if (body.isNotEmpty)
        "${NumberFormat.compact().format(body.length)}B body",
      if (body is List || body is Map) 'body',
    ].join(' ');

    final statusCode = response.statusCode;
    final contentType = response.headers
        .value(HttpHeaders.contentTypeHeader)
        ?.split(';')
        .first;
    final contentLength =
        int.tryParse(
          response.headers.value(HttpHeaders.contentLengthHeader) ?? '',
        ) ??
        response.data.length ??
        0;
    final cookies = response.headers[HttpHeaders.setCookieHeader]?.length ?? 0;

    final responseLog = [
      statusCode,
      if (contentType != null) contentType,
      if (contentLength > 0) '${NumberFormat.compact().format(contentLength)}B',
      if (cookies > 0) "$cookies cookie${cookies != 1 ? 's' : ''}",
    ].join(' ');

    log("$requestLog => $responseLog");
    handler.next(response);
  }
}

// Shared CookieJar instance for maintaining session across clients
CookieJar? _cookieJar;
CookieJar get cookieJar => _cookieJar ??= CookieJar();

// Creates a new Dio instance with configured interceptors
// Cookies are shared via the global CookieJar
Dio createDio() {
  final dio = Dio()
    ..options = BaseOptions(
      validateStatus: (status) => status != null && status < 400,
      followRedirects: false,
    );

  dio.interceptors.addAll([
    CookieManager(cookieJar), // Store cookies
    HttpsInterceptor(), // Enforce HTTPS
    RedirectInterceptor(() => dio), // Handle redirects within this Dio instance
    LogInterceptor(), // Log requests and responses
  ]);

  return dio;
}
