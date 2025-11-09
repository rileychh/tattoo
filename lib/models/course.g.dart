// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EntityRef _$EntityRefFromJson(Map<String, dynamic> json) =>
    _EntityRef(id: json['id'] as String?, name: json['name'] as String?);

Map<String, dynamic> _$EntityRefToJson(_EntityRef instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_LocalizedString _$LocalizedStringFromJson(Map<String, dynamic> json) =>
    _LocalizedString(en: json['en'] as String?, zh: json['zh'] as String?);

Map<String, dynamic> _$LocalizedStringToJson(_LocalizedString instance) =>
    <String, dynamic>{'en': instance.en, 'zh': instance.zh};

_CourseSemester _$CourseSemesterFromJson(Map<String, dynamic> json) =>
    _CourseSemester(
      year: (json['year'] as num).toInt(),
      semester: (json['semester'] as num).toInt(),
    );

Map<String, dynamic> _$CourseSemesterToJson(_CourseSemester instance) =>
    <String, dynamic>{'year': instance.year, 'semester': instance.semester};

_CourseSchedule _$CourseScheduleFromJson(Map<String, dynamic> json) =>
    _CourseSchedule(
      number: json['number'] as String?,
      course: json['course'] == null
          ? null
          : EntityRef.fromJson(json['course'] as Map<String, dynamic>),
      credits: (json['credits'] as num?)?.toDouble(),
      hours: (json['hours'] as num?)?.toInt(),
      type: $enumDecodeNullable(_$CourseTypeEnumMap, json['type']),
      teacher: json['teacher'] == null
          ? null
          : EntityRef.fromJson(json['teacher'] as Map<String, dynamic>),
      classes: (json['classes'] as List<dynamic>?)
          ?.map((e) => EntityRef.fromJson(e as Map<String, dynamic>))
          .toList(),
      schedule: (json['schedule'] as List<dynamic>?)
          ?.map(
            (e) => _$recordConvert(
              e,
              ($jsonValue) => (
                $enumDecode(_$DayOfWeekEnumMap, $jsonValue[r'$1']),
                $enumDecode(_$PeriodEnumMap, $jsonValue[r'$2']),
              ),
            ),
          )
          .toList(),
      classroom: json['classroom'] == null
          ? null
          : EntityRef.fromJson(json['classroom'] as Map<String, dynamic>),
      status: json['status'] as String?,
      language: json['language'] as String?,
      syllabusId: json['syllabusId'] as String?,
      remarks: json['remarks'] as String?,
    );

Map<String, dynamic> _$CourseScheduleToJson(_CourseSchedule instance) =>
    <String, dynamic>{
      'number': instance.number,
      'course': instance.course,
      'credits': instance.credits,
      'hours': instance.hours,
      'type': _$CourseTypeEnumMap[instance.type],
      'teacher': instance.teacher,
      'classes': instance.classes,
      'schedule': instance.schedule
          ?.map(
            (e) => <String, dynamic>{
              r'$1': _$DayOfWeekEnumMap[e.$1]!,
              r'$2': _$PeriodEnumMap[e.$2]!,
            },
          )
          .toList(),
      'classroom': instance.classroom,
      'status': instance.status,
      'language': instance.language,
      'syllabusId': instance.syllabusId,
      'remarks': instance.remarks,
    };

const _$CourseTypeEnumMap = {
  CourseType.required: 'required',
  CourseType.elective: 'elective',
  CourseType.general: 'general',
};

const _$DayOfWeekEnumMap = {
  DayOfWeek.sunday: 'sunday',
  DayOfWeek.monday: 'monday',
  DayOfWeek.tuesday: 'tuesday',
  DayOfWeek.wednesday: 'wednesday',
  DayOfWeek.thursday: 'thursday',
  DayOfWeek.friday: 'friday',
  DayOfWeek.saturday: 'saturday',
};

const _$PeriodEnumMap = {
  Period.first: 'first',
  Period.second: 'second',
  Period.third: 'third',
  Period.fourth: 'fourth',
  Period.nPeriod: 'nPeriod',
  Period.fifth: 'fifth',
  Period.sixth: 'sixth',
  Period.seventh: 'seventh',
  Period.eighth: 'eighth',
  Period.ninth: 'ninth',
  Period.aPeriod: 'aPeriod',
  Period.bPeriod: 'bPeriod',
  Period.cPeriod: 'cPeriod',
  Period.dPeriod: 'dPeriod',
};

$Rec _$recordConvert<$Rec>(Object? value, $Rec Function(Map) convert) =>
    convert(value as Map<String, dynamic>);

_Course _$CourseFromJson(Map<String, dynamic> json) => _Course(
  id: json['id'] as String?,
  name: json['name'] == null
      ? null
      : LocalizedString.fromJson(json['name'] as Map<String, dynamic>),
  credits: (json['credits'] as num?)?.toDouble(),
  hours: (json['hours'] as num?)?.toInt(),
  description: json['description'] == null
      ? null
      : LocalizedString.fromJson(json['description'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CourseToJson(_Course instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'credits': instance.credits,
  'hours': instance.hours,
  'description': instance.description,
};
