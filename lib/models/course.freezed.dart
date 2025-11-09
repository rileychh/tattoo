// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EntityRef implements DiagnosticableTreeMixin {

 String? get id; String? get name;
/// Create a copy of EntityRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntityRefCopyWith<EntityRef> get copyWith => _$EntityRefCopyWithImpl<EntityRef>(this as EntityRef, _$identity);

  /// Serializes this EntityRef to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EntityRef'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntityRef&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EntityRef(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $EntityRefCopyWith<$Res>  {
  factory $EntityRefCopyWith(EntityRef value, $Res Function(EntityRef) _then) = _$EntityRefCopyWithImpl;
@useResult
$Res call({
 String? id, String? name
});




}
/// @nodoc
class _$EntityRefCopyWithImpl<$Res>
    implements $EntityRefCopyWith<$Res> {
  _$EntityRefCopyWithImpl(this._self, this._then);

  final EntityRef _self;
  final $Res Function(EntityRef) _then;

/// Create a copy of EntityRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EntityRef].
extension EntityRefPatterns on EntityRef {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EntityRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EntityRef() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EntityRef value)  $default,){
final _that = this;
switch (_that) {
case _EntityRef():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EntityRef value)?  $default,){
final _that = this;
switch (_that) {
case _EntityRef() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EntityRef() when $default != null:
return $default(_that.id,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name)  $default,) {final _that = this;
switch (_that) {
case _EntityRef():
return $default(_that.id,_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _EntityRef() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EntityRef with DiagnosticableTreeMixin implements EntityRef {
  const _EntityRef({this.id, this.name});
  factory _EntityRef.fromJson(Map<String, dynamic> json) => _$EntityRefFromJson(json);

@override final  String? id;
@override final  String? name;

/// Create a copy of EntityRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntityRefCopyWith<_EntityRef> get copyWith => __$EntityRefCopyWithImpl<_EntityRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EntityRefToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EntityRef'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EntityRef&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EntityRef(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$EntityRefCopyWith<$Res> implements $EntityRefCopyWith<$Res> {
  factory _$EntityRefCopyWith(_EntityRef value, $Res Function(_EntityRef) _then) = __$EntityRefCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name
});




}
/// @nodoc
class __$EntityRefCopyWithImpl<$Res>
    implements _$EntityRefCopyWith<$Res> {
  __$EntityRefCopyWithImpl(this._self, this._then);

  final _EntityRef _self;
  final $Res Function(_EntityRef) _then;

/// Create a copy of EntityRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_EntityRef(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LocalizedString implements DiagnosticableTreeMixin {

 String? get en; String? get zh;
/// Create a copy of LocalizedString
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<LocalizedString> get copyWith => _$LocalizedStringCopyWithImpl<LocalizedString>(this as LocalizedString, _$identity);

  /// Serializes this LocalizedString to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LocalizedString'))
    ..add(DiagnosticsProperty('en', en))..add(DiagnosticsProperty('zh', zh));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalizedString&&(identical(other.en, en) || other.en == en)&&(identical(other.zh, zh) || other.zh == zh));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,en,zh);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LocalizedString(en: $en, zh: $zh)';
}


}

/// @nodoc
abstract mixin class $LocalizedStringCopyWith<$Res>  {
  factory $LocalizedStringCopyWith(LocalizedString value, $Res Function(LocalizedString) _then) = _$LocalizedStringCopyWithImpl;
@useResult
$Res call({
 String? en, String? zh
});




}
/// @nodoc
class _$LocalizedStringCopyWithImpl<$Res>
    implements $LocalizedStringCopyWith<$Res> {
  _$LocalizedStringCopyWithImpl(this._self, this._then);

  final LocalizedString _self;
  final $Res Function(LocalizedString) _then;

/// Create a copy of LocalizedString
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? en = freezed,Object? zh = freezed,}) {
  return _then(_self.copyWith(
en: freezed == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String?,zh: freezed == zh ? _self.zh : zh // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LocalizedString].
extension LocalizedStringPatterns on LocalizedString {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocalizedString value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocalizedString() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocalizedString value)  $default,){
final _that = this;
switch (_that) {
case _LocalizedString():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocalizedString value)?  $default,){
final _that = this;
switch (_that) {
case _LocalizedString() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? en,  String? zh)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocalizedString() when $default != null:
return $default(_that.en,_that.zh);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? en,  String? zh)  $default,) {final _that = this;
switch (_that) {
case _LocalizedString():
return $default(_that.en,_that.zh);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? en,  String? zh)?  $default,) {final _that = this;
switch (_that) {
case _LocalizedString() when $default != null:
return $default(_that.en,_that.zh);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocalizedString with DiagnosticableTreeMixin implements LocalizedString {
  const _LocalizedString({this.en, this.zh});
  factory _LocalizedString.fromJson(Map<String, dynamic> json) => _$LocalizedStringFromJson(json);

@override final  String? en;
@override final  String? zh;

/// Create a copy of LocalizedString
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalizedStringCopyWith<_LocalizedString> get copyWith => __$LocalizedStringCopyWithImpl<_LocalizedString>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocalizedStringToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LocalizedString'))
    ..add(DiagnosticsProperty('en', en))..add(DiagnosticsProperty('zh', zh));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalizedString&&(identical(other.en, en) || other.en == en)&&(identical(other.zh, zh) || other.zh == zh));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,en,zh);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LocalizedString(en: $en, zh: $zh)';
}


}

/// @nodoc
abstract mixin class _$LocalizedStringCopyWith<$Res> implements $LocalizedStringCopyWith<$Res> {
  factory _$LocalizedStringCopyWith(_LocalizedString value, $Res Function(_LocalizedString) _then) = __$LocalizedStringCopyWithImpl;
@override @useResult
$Res call({
 String? en, String? zh
});




}
/// @nodoc
class __$LocalizedStringCopyWithImpl<$Res>
    implements _$LocalizedStringCopyWith<$Res> {
  __$LocalizedStringCopyWithImpl(this._self, this._then);

  final _LocalizedString _self;
  final $Res Function(_LocalizedString) _then;

/// Create a copy of LocalizedString
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? en = freezed,Object? zh = freezed,}) {
  return _then(_LocalizedString(
en: freezed == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String?,zh: freezed == zh ? _self.zh : zh // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CourseSemester implements DiagnosticableTreeMixin {

 int get year; int get semester;
/// Create a copy of CourseSemester
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseSemesterCopyWith<CourseSemester> get copyWith => _$CourseSemesterCopyWithImpl<CourseSemester>(this as CourseSemester, _$identity);

  /// Serializes this CourseSemester to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CourseSemester'))
    ..add(DiagnosticsProperty('year', year))..add(DiagnosticsProperty('semester', semester));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseSemester&&(identical(other.year, year) || other.year == year)&&(identical(other.semester, semester) || other.semester == semester));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,semester);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CourseSemester(year: $year, semester: $semester)';
}


}

/// @nodoc
abstract mixin class $CourseSemesterCopyWith<$Res>  {
  factory $CourseSemesterCopyWith(CourseSemester value, $Res Function(CourseSemester) _then) = _$CourseSemesterCopyWithImpl;
@useResult
$Res call({
 int year, int semester
});




}
/// @nodoc
class _$CourseSemesterCopyWithImpl<$Res>
    implements $CourseSemesterCopyWith<$Res> {
  _$CourseSemesterCopyWithImpl(this._self, this._then);

  final CourseSemester _self;
  final $Res Function(CourseSemester) _then;

/// Create a copy of CourseSemester
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? year = null,Object? semester = null,}) {
  return _then(_self.copyWith(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,semester: null == semester ? _self.semester : semester // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CourseSemester].
extension CourseSemesterPatterns on CourseSemester {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourseSemester value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourseSemester() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourseSemester value)  $default,){
final _that = this;
switch (_that) {
case _CourseSemester():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourseSemester value)?  $default,){
final _that = this;
switch (_that) {
case _CourseSemester() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int year,  int semester)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourseSemester() when $default != null:
return $default(_that.year,_that.semester);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int year,  int semester)  $default,) {final _that = this;
switch (_that) {
case _CourseSemester():
return $default(_that.year,_that.semester);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int year,  int semester)?  $default,) {final _that = this;
switch (_that) {
case _CourseSemester() when $default != null:
return $default(_that.year,_that.semester);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CourseSemester with DiagnosticableTreeMixin implements CourseSemester {
  const _CourseSemester({required this.year, required this.semester});
  factory _CourseSemester.fromJson(Map<String, dynamic> json) => _$CourseSemesterFromJson(json);

@override final  int year;
@override final  int semester;

/// Create a copy of CourseSemester
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseSemesterCopyWith<_CourseSemester> get copyWith => __$CourseSemesterCopyWithImpl<_CourseSemester>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseSemesterToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CourseSemester'))
    ..add(DiagnosticsProperty('year', year))..add(DiagnosticsProperty('semester', semester));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseSemester&&(identical(other.year, year) || other.year == year)&&(identical(other.semester, semester) || other.semester == semester));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,year,semester);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CourseSemester(year: $year, semester: $semester)';
}


}

/// @nodoc
abstract mixin class _$CourseSemesterCopyWith<$Res> implements $CourseSemesterCopyWith<$Res> {
  factory _$CourseSemesterCopyWith(_CourseSemester value, $Res Function(_CourseSemester) _then) = __$CourseSemesterCopyWithImpl;
@override @useResult
$Res call({
 int year, int semester
});




}
/// @nodoc
class __$CourseSemesterCopyWithImpl<$Res>
    implements _$CourseSemesterCopyWith<$Res> {
  __$CourseSemesterCopyWithImpl(this._self, this._then);

  final _CourseSemester _self;
  final $Res Function(_CourseSemester) _then;

/// Create a copy of CourseSemester
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? year = null,Object? semester = null,}) {
  return _then(_CourseSemester(
year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,semester: null == semester ? _self.semester : semester // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$CourseSchedule implements DiagnosticableTreeMixin {

 String? get number; EntityRef? get course; double? get credits; int? get hours; CourseType? get type; EntityRef? get teacher; List<EntityRef>? get classes; List<(DayOfWeek, Period)>? get schedule; EntityRef? get classroom; String? get status; String? get language; String? get syllabusId; String? get remarks;
/// Create a copy of CourseSchedule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseScheduleCopyWith<CourseSchedule> get copyWith => _$CourseScheduleCopyWithImpl<CourseSchedule>(this as CourseSchedule, _$identity);

  /// Serializes this CourseSchedule to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CourseSchedule'))
    ..add(DiagnosticsProperty('number', number))..add(DiagnosticsProperty('course', course))..add(DiagnosticsProperty('credits', credits))..add(DiagnosticsProperty('hours', hours))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('teacher', teacher))..add(DiagnosticsProperty('classes', classes))..add(DiagnosticsProperty('schedule', schedule))..add(DiagnosticsProperty('classroom', classroom))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('language', language))..add(DiagnosticsProperty('syllabusId', syllabusId))..add(DiagnosticsProperty('remarks', remarks));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseSchedule&&(identical(other.number, number) || other.number == number)&&(identical(other.course, course) || other.course == course)&&(identical(other.credits, credits) || other.credits == credits)&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.type, type) || other.type == type)&&(identical(other.teacher, teacher) || other.teacher == teacher)&&const DeepCollectionEquality().equals(other.classes, classes)&&const DeepCollectionEquality().equals(other.schedule, schedule)&&(identical(other.classroom, classroom) || other.classroom == classroom)&&(identical(other.status, status) || other.status == status)&&(identical(other.language, language) || other.language == language)&&(identical(other.syllabusId, syllabusId) || other.syllabusId == syllabusId)&&(identical(other.remarks, remarks) || other.remarks == remarks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,course,credits,hours,type,teacher,const DeepCollectionEquality().hash(classes),const DeepCollectionEquality().hash(schedule),classroom,status,language,syllabusId,remarks);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CourseSchedule(number: $number, course: $course, credits: $credits, hours: $hours, type: $type, teacher: $teacher, classes: $classes, schedule: $schedule, classroom: $classroom, status: $status, language: $language, syllabusId: $syllabusId, remarks: $remarks)';
}


}

/// @nodoc
abstract mixin class $CourseScheduleCopyWith<$Res>  {
  factory $CourseScheduleCopyWith(CourseSchedule value, $Res Function(CourseSchedule) _then) = _$CourseScheduleCopyWithImpl;
@useResult
$Res call({
 String? number, EntityRef? course, double? credits, int? hours, CourseType? type, EntityRef? teacher, List<EntityRef>? classes, List<(DayOfWeek, Period)>? schedule, EntityRef? classroom, String? status, String? language, String? syllabusId, String? remarks
});


$EntityRefCopyWith<$Res>? get course;$EntityRefCopyWith<$Res>? get teacher;$EntityRefCopyWith<$Res>? get classroom;

}
/// @nodoc
class _$CourseScheduleCopyWithImpl<$Res>
    implements $CourseScheduleCopyWith<$Res> {
  _$CourseScheduleCopyWithImpl(this._self, this._then);

  final CourseSchedule _self;
  final $Res Function(CourseSchedule) _then;

/// Create a copy of CourseSchedule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = freezed,Object? course = freezed,Object? credits = freezed,Object? hours = freezed,Object? type = freezed,Object? teacher = freezed,Object? classes = freezed,Object? schedule = freezed,Object? classroom = freezed,Object? status = freezed,Object? language = freezed,Object? syllabusId = freezed,Object? remarks = freezed,}) {
  return _then(_self.copyWith(
number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as EntityRef?,credits: freezed == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as double?,hours: freezed == hours ? _self.hours : hours // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CourseType?,teacher: freezed == teacher ? _self.teacher : teacher // ignore: cast_nullable_to_non_nullable
as EntityRef?,classes: freezed == classes ? _self.classes : classes // ignore: cast_nullable_to_non_nullable
as List<EntityRef>?,schedule: freezed == schedule ? _self.schedule : schedule // ignore: cast_nullable_to_non_nullable
as List<(DayOfWeek, Period)>?,classroom: freezed == classroom ? _self.classroom : classroom // ignore: cast_nullable_to_non_nullable
as EntityRef?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,syllabusId: freezed == syllabusId ? _self.syllabusId : syllabusId // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CourseSchedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityRefCopyWith<$Res>? get course {
    if (_self.course == null) {
    return null;
  }

  return $EntityRefCopyWith<$Res>(_self.course!, (value) {
    return _then(_self.copyWith(course: value));
  });
}/// Create a copy of CourseSchedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityRefCopyWith<$Res>? get teacher {
    if (_self.teacher == null) {
    return null;
  }

  return $EntityRefCopyWith<$Res>(_self.teacher!, (value) {
    return _then(_self.copyWith(teacher: value));
  });
}/// Create a copy of CourseSchedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityRefCopyWith<$Res>? get classroom {
    if (_self.classroom == null) {
    return null;
  }

  return $EntityRefCopyWith<$Res>(_self.classroom!, (value) {
    return _then(_self.copyWith(classroom: value));
  });
}
}


/// Adds pattern-matching-related methods to [CourseSchedule].
extension CourseSchedulePatterns on CourseSchedule {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourseSchedule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourseSchedule() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourseSchedule value)  $default,){
final _that = this;
switch (_that) {
case _CourseSchedule():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourseSchedule value)?  $default,){
final _that = this;
switch (_that) {
case _CourseSchedule() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? number,  EntityRef? course,  double? credits,  int? hours,  CourseType? type,  EntityRef? teacher,  List<EntityRef>? classes,  List<(DayOfWeek, Period)>? schedule,  EntityRef? classroom,  String? status,  String? language,  String? syllabusId,  String? remarks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourseSchedule() when $default != null:
return $default(_that.number,_that.course,_that.credits,_that.hours,_that.type,_that.teacher,_that.classes,_that.schedule,_that.classroom,_that.status,_that.language,_that.syllabusId,_that.remarks);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? number,  EntityRef? course,  double? credits,  int? hours,  CourseType? type,  EntityRef? teacher,  List<EntityRef>? classes,  List<(DayOfWeek, Period)>? schedule,  EntityRef? classroom,  String? status,  String? language,  String? syllabusId,  String? remarks)  $default,) {final _that = this;
switch (_that) {
case _CourseSchedule():
return $default(_that.number,_that.course,_that.credits,_that.hours,_that.type,_that.teacher,_that.classes,_that.schedule,_that.classroom,_that.status,_that.language,_that.syllabusId,_that.remarks);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? number,  EntityRef? course,  double? credits,  int? hours,  CourseType? type,  EntityRef? teacher,  List<EntityRef>? classes,  List<(DayOfWeek, Period)>? schedule,  EntityRef? classroom,  String? status,  String? language,  String? syllabusId,  String? remarks)?  $default,) {final _that = this;
switch (_that) {
case _CourseSchedule() when $default != null:
return $default(_that.number,_that.course,_that.credits,_that.hours,_that.type,_that.teacher,_that.classes,_that.schedule,_that.classroom,_that.status,_that.language,_that.syllabusId,_that.remarks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CourseSchedule with DiagnosticableTreeMixin implements CourseSchedule {
  const _CourseSchedule({this.number, this.course, this.credits, this.hours, this.type, this.teacher, final  List<EntityRef>? classes, final  List<(DayOfWeek, Period)>? schedule, this.classroom, this.status, this.language, this.syllabusId, this.remarks}): _classes = classes,_schedule = schedule;
  factory _CourseSchedule.fromJson(Map<String, dynamic> json) => _$CourseScheduleFromJson(json);

@override final  String? number;
@override final  EntityRef? course;
@override final  double? credits;
@override final  int? hours;
@override final  CourseType? type;
@override final  EntityRef? teacher;
 final  List<EntityRef>? _classes;
@override List<EntityRef>? get classes {
  final value = _classes;
  if (value == null) return null;
  if (_classes is EqualUnmodifiableListView) return _classes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<(DayOfWeek, Period)>? _schedule;
@override List<(DayOfWeek, Period)>? get schedule {
  final value = _schedule;
  if (value == null) return null;
  if (_schedule is EqualUnmodifiableListView) return _schedule;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  EntityRef? classroom;
@override final  String? status;
@override final  String? language;
@override final  String? syllabusId;
@override final  String? remarks;

/// Create a copy of CourseSchedule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseScheduleCopyWith<_CourseSchedule> get copyWith => __$CourseScheduleCopyWithImpl<_CourseSchedule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseScheduleToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CourseSchedule'))
    ..add(DiagnosticsProperty('number', number))..add(DiagnosticsProperty('course', course))..add(DiagnosticsProperty('credits', credits))..add(DiagnosticsProperty('hours', hours))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('teacher', teacher))..add(DiagnosticsProperty('classes', classes))..add(DiagnosticsProperty('schedule', schedule))..add(DiagnosticsProperty('classroom', classroom))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('language', language))..add(DiagnosticsProperty('syllabusId', syllabusId))..add(DiagnosticsProperty('remarks', remarks));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseSchedule&&(identical(other.number, number) || other.number == number)&&(identical(other.course, course) || other.course == course)&&(identical(other.credits, credits) || other.credits == credits)&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.type, type) || other.type == type)&&(identical(other.teacher, teacher) || other.teacher == teacher)&&const DeepCollectionEquality().equals(other._classes, _classes)&&const DeepCollectionEquality().equals(other._schedule, _schedule)&&(identical(other.classroom, classroom) || other.classroom == classroom)&&(identical(other.status, status) || other.status == status)&&(identical(other.language, language) || other.language == language)&&(identical(other.syllabusId, syllabusId) || other.syllabusId == syllabusId)&&(identical(other.remarks, remarks) || other.remarks == remarks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,course,credits,hours,type,teacher,const DeepCollectionEquality().hash(_classes),const DeepCollectionEquality().hash(_schedule),classroom,status,language,syllabusId,remarks);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CourseSchedule(number: $number, course: $course, credits: $credits, hours: $hours, type: $type, teacher: $teacher, classes: $classes, schedule: $schedule, classroom: $classroom, status: $status, language: $language, syllabusId: $syllabusId, remarks: $remarks)';
}


}

/// @nodoc
abstract mixin class _$CourseScheduleCopyWith<$Res> implements $CourseScheduleCopyWith<$Res> {
  factory _$CourseScheduleCopyWith(_CourseSchedule value, $Res Function(_CourseSchedule) _then) = __$CourseScheduleCopyWithImpl;
@override @useResult
$Res call({
 String? number, EntityRef? course, double? credits, int? hours, CourseType? type, EntityRef? teacher, List<EntityRef>? classes, List<(DayOfWeek, Period)>? schedule, EntityRef? classroom, String? status, String? language, String? syllabusId, String? remarks
});


@override $EntityRefCopyWith<$Res>? get course;@override $EntityRefCopyWith<$Res>? get teacher;@override $EntityRefCopyWith<$Res>? get classroom;

}
/// @nodoc
class __$CourseScheduleCopyWithImpl<$Res>
    implements _$CourseScheduleCopyWith<$Res> {
  __$CourseScheduleCopyWithImpl(this._self, this._then);

  final _CourseSchedule _self;
  final $Res Function(_CourseSchedule) _then;

/// Create a copy of CourseSchedule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = freezed,Object? course = freezed,Object? credits = freezed,Object? hours = freezed,Object? type = freezed,Object? teacher = freezed,Object? classes = freezed,Object? schedule = freezed,Object? classroom = freezed,Object? status = freezed,Object? language = freezed,Object? syllabusId = freezed,Object? remarks = freezed,}) {
  return _then(_CourseSchedule(
number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as EntityRef?,credits: freezed == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as double?,hours: freezed == hours ? _self.hours : hours // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CourseType?,teacher: freezed == teacher ? _self.teacher : teacher // ignore: cast_nullable_to_non_nullable
as EntityRef?,classes: freezed == classes ? _self._classes : classes // ignore: cast_nullable_to_non_nullable
as List<EntityRef>?,schedule: freezed == schedule ? _self._schedule : schedule // ignore: cast_nullable_to_non_nullable
as List<(DayOfWeek, Period)>?,classroom: freezed == classroom ? _self.classroom : classroom // ignore: cast_nullable_to_non_nullable
as EntityRef?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,syllabusId: freezed == syllabusId ? _self.syllabusId : syllabusId // ignore: cast_nullable_to_non_nullable
as String?,remarks: freezed == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CourseSchedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityRefCopyWith<$Res>? get course {
    if (_self.course == null) {
    return null;
  }

  return $EntityRefCopyWith<$Res>(_self.course!, (value) {
    return _then(_self.copyWith(course: value));
  });
}/// Create a copy of CourseSchedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityRefCopyWith<$Res>? get teacher {
    if (_self.teacher == null) {
    return null;
  }

  return $EntityRefCopyWith<$Res>(_self.teacher!, (value) {
    return _then(_self.copyWith(teacher: value));
  });
}/// Create a copy of CourseSchedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EntityRefCopyWith<$Res>? get classroom {
    if (_self.classroom == null) {
    return null;
  }

  return $EntityRefCopyWith<$Res>(_self.classroom!, (value) {
    return _then(_self.copyWith(classroom: value));
  });
}
}


/// @nodoc
mixin _$Course implements DiagnosticableTreeMixin {

 String? get id; LocalizedString? get name; double? get credits; int? get hours; LocalizedString? get description;
/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseCopyWith<Course> get copyWith => _$CourseCopyWithImpl<Course>(this as Course, _$identity);

  /// Serializes this Course to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Course'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('credits', credits))..add(DiagnosticsProperty('hours', hours))..add(DiagnosticsProperty('description', description));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Course&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.credits, credits) || other.credits == credits)&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,credits,hours,description);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Course(id: $id, name: $name, credits: $credits, hours: $hours, description: $description)';
}


}

/// @nodoc
abstract mixin class $CourseCopyWith<$Res>  {
  factory $CourseCopyWith(Course value, $Res Function(Course) _then) = _$CourseCopyWithImpl;
@useResult
$Res call({
 String? id, LocalizedString? name, double? credits, int? hours, LocalizedString? description
});


$LocalizedStringCopyWith<$Res>? get name;$LocalizedStringCopyWith<$Res>? get description;

}
/// @nodoc
class _$CourseCopyWithImpl<$Res>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._self, this._then);

  final Course _self;
  final $Res Function(Course) _then;

/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? credits = freezed,Object? hours = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as LocalizedString?,credits: freezed == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as double?,hours: freezed == hours ? _self.hours : hours // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as LocalizedString?,
  ));
}
/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res>? get name {
    if (_self.name == null) {
    return null;
  }

  return $LocalizedStringCopyWith<$Res>(_self.name!, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res>? get description {
    if (_self.description == null) {
    return null;
  }

  return $LocalizedStringCopyWith<$Res>(_self.description!, (value) {
    return _then(_self.copyWith(description: value));
  });
}
}


/// Adds pattern-matching-related methods to [Course].
extension CoursePatterns on Course {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Course value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Course value)  $default,){
final _that = this;
switch (_that) {
case _Course():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Course value)?  $default,){
final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  LocalizedString? name,  double? credits,  int? hours,  LocalizedString? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that.id,_that.name,_that.credits,_that.hours,_that.description);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  LocalizedString? name,  double? credits,  int? hours,  LocalizedString? description)  $default,) {final _that = this;
switch (_that) {
case _Course():
return $default(_that.id,_that.name,_that.credits,_that.hours,_that.description);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  LocalizedString? name,  double? credits,  int? hours,  LocalizedString? description)?  $default,) {final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that.id,_that.name,_that.credits,_that.hours,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Course with DiagnosticableTreeMixin implements Course {
  const _Course({this.id, this.name, this.credits, this.hours, this.description});
  factory _Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

@override final  String? id;
@override final  LocalizedString? name;
@override final  double? credits;
@override final  int? hours;
@override final  LocalizedString? description;

/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseCopyWith<_Course> get copyWith => __$CourseCopyWithImpl<_Course>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Course'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('credits', credits))..add(DiagnosticsProperty('hours', hours))..add(DiagnosticsProperty('description', description));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Course&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.credits, credits) || other.credits == credits)&&(identical(other.hours, hours) || other.hours == hours)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,credits,hours,description);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Course(id: $id, name: $name, credits: $credits, hours: $hours, description: $description)';
}


}

/// @nodoc
abstract mixin class _$CourseCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$CourseCopyWith(_Course value, $Res Function(_Course) _then) = __$CourseCopyWithImpl;
@override @useResult
$Res call({
 String? id, LocalizedString? name, double? credits, int? hours, LocalizedString? description
});


@override $LocalizedStringCopyWith<$Res>? get name;@override $LocalizedStringCopyWith<$Res>? get description;

}
/// @nodoc
class __$CourseCopyWithImpl<$Res>
    implements _$CourseCopyWith<$Res> {
  __$CourseCopyWithImpl(this._self, this._then);

  final _Course _self;
  final $Res Function(_Course) _then;

/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? credits = freezed,Object? hours = freezed,Object? description = freezed,}) {
  return _then(_Course(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as LocalizedString?,credits: freezed == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as double?,hours: freezed == hours ? _self.hours : hours // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as LocalizedString?,
  ));
}

/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res>? get name {
    if (_self.name == null) {
    return null;
  }

  return $LocalizedStringCopyWith<$Res>(_self.name!, (value) {
    return _then(_self.copyWith(name: value));
  });
}/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedStringCopyWith<$Res>? get description {
    if (_self.description == null) {
    return null;
  }

  return $LocalizedStringCopyWith<$Res>(_self.description!, (value) {
    return _then(_self.copyWith(description: value));
  });
}
}

// dart format on
