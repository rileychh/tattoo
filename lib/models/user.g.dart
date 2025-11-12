// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  name: json['name'] as String?,
  avatarFilename: json['avatarFilename'] as String?,
  email: json['email'] as String?,
  isPasswordExpired: json['isPasswordExpired'] as bool?,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'name': instance.name,
  'avatarFilename': instance.avatarFilename,
  'email': instance.email,
  'isPasswordExpired': instance.isPasswordExpired,
};
