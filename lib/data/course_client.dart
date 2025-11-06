import 'package:dio/dio.dart';
import 'package:html/parser.dart';
import 'package:tattoo/models/course.dart';
import 'package:tattoo/utils/http.dart';
import 'package:collection/collection.dart';

class CourseClient {
  late final Dio _courseDio;

  CourseClient() {
    _courseDio = createDio()..options.baseUrl = 'https://aps.ntut.edu.tw';
  }

  Future getCourseTableList(String username) async {
    final response = await _courseDio.post(
      '/course/tw/Select.jsp',
      data: {'code': username, 'format': '-3'},
    );

    // Find available course tables by reading anchor references
    // Document structure: table>tr>td>img+a[href]
    final document = parse(response.data);
    final tableAnchors = document.querySelectorAll('table a[href]');
    final tableLinks = tableAnchors.map((e) => e.attributes['href']).toList();

    // Parse links and extract query parameters
    // Link format: Select.jsp?format=-2&code=111360109&year=114&sem=1
    return tableLinks.map((link) {
      final queryParams = Uri.parse(link!).queryParameters;
      return {
        'year': int.parse(queryParams['year']!),
        'semester': int.parse(queryParams['sem']!),
      };
    }).toList();
  }

  Future<List<CourseSchedule>> getCourseTable({
    required String username,
    required int year,
    required int semester,
  }) async {
    final response = await _courseDio.get(
      '/course/tw/Select.jsp',
      queryParameters: {
        'format': '-2',
        'code': username,
        'year': year,
        'sem': semester,
      },
    );

    final document = parse(response.data);

    // There are two tables in the document; the first one is a timetable grid
    // The second table is a list with one course per row, we'll extract that
    final courseSelectionTable = document.querySelectorAll('table')[1];

    // Find all rows except the first two header rows and the last summary row
    final tableRows = courseSelectionTable.querySelectorAll('tr');
    final trimmedTableRows = tableRows.sublist(2, tableRows.length - 1);
    if (trimmedTableRows.isEmpty) {
      throw Exception('No courses found in the selection table.');
    }

    return trimmedTableRows.map((row) {
      // Map cell elements to their trimmed text content
      final cells = row.children.map((cell) => cell.text.trim()).toList();

      // Extract basic course information
      final id = cells[0].nullIfEmpty();
      final name = cells[1].nullIfEmpty();
      final credits = double.tryParse(cells[3]);
      final hours = int.tryParse(cells[4]);
      final type = CourseType.values.firstWhereOrNull(
        (e) => e.name == cells[5],
      );
      final teacher = cells[6].nullIfEmpty();
      final className = cells[7].nullIfEmpty();
      final classroom = cells[15].nullIfEmpty();
      final status = cells[16].nullIfEmpty();
      final language = cells[17].nullIfEmpty();
      final remarks = cells[18].nullIfEmpty();
      final isPractice = cells[19].trim() == '是';

      // Parse schedule from day columns (indices 8-14)
      final schedule = <(DayOfWeek, Period)>[];
      final days = DayOfWeek.values;

      for (var i = 0; i < days.length; i++) {
        final dayText = cells[8 + i];
        if (dayText.isEmpty) {
          continue;
        }
        // Parse period codes (e.g., "7 8" or "8 9 A") and skip invalid ones
        final periods = dayText
            .split(' ')
            .map(
              (e) => Period.values.firstWhereOrNull((p) => p.code == e.trim()),
            )
            .whereType<Period>()
            .toList();
        final scheduleOfDay = periods.map((p) => (days[i], p));
        schedule.addAll(scheduleOfDay);
      }

      return CourseSchedule(
        id: id,
        name: name,
        credits: credits,
        hours: hours,
        type: type,
        teacher: teacher,
        className: className,
        schedule: schedule.isEmpty ? null : schedule,
        classroom: classroom,
        status: status,
        language: language,
        remarks: remarks,
        isPractice: isPractice,
      );
    }).toList();
  }

  Future getCourseDescription(String id) async {
    await _courseDio.get(
      'Curr.jsp',
      queryParameters: {'format': '-2', 'code': id},
    );

    throw UnimplementedError();
  }

  Future getTeacher({
    required String id,
    required int year,
    required int semester,
  }) async {
    await _courseDio.get(
      'Teach.jsp',
      queryParameters: {
        'format': '-3',
        'year': year,
        'sem': semester,
        'code': id,
      },
    );

    throw UnimplementedError();
  }

  Future getClassroom({
    required String id,
    required int year,
    required int semester,
  }) async {
    await _courseDio.get(
      'Croom.jsp',
      queryParameters: {
        'format': '-3',
        'year': year,
        'sem': semester,
        'code': id,
      },
    );

    throw UnimplementedError();
  }
}

extension on String {
  String? nullIfEmpty() => isEmpty ? null : this;
}
