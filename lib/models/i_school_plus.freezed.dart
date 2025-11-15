// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_school_plus.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ISchoolPlusStudent {

 String? get id; String? get name;
/// Create a copy of ISchoolPlusStudent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ISchoolPlusStudentCopyWith<ISchoolPlusStudent> get copyWith => _$ISchoolPlusStudentCopyWithImpl<ISchoolPlusStudent>(this as ISchoolPlusStudent, _$identity);

  /// Serializes this ISchoolPlusStudent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ISchoolPlusStudent&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ISchoolPlusStudent(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $ISchoolPlusStudentCopyWith<$Res>  {
  factory $ISchoolPlusStudentCopyWith(ISchoolPlusStudent value, $Res Function(ISchoolPlusStudent) _then) = _$ISchoolPlusStudentCopyWithImpl;
@useResult
$Res call({
 String? id, String? name
});




}
/// @nodoc
class _$ISchoolPlusStudentCopyWithImpl<$Res>
    implements $ISchoolPlusStudentCopyWith<$Res> {
  _$ISchoolPlusStudentCopyWithImpl(this._self, this._then);

  final ISchoolPlusStudent _self;
  final $Res Function(ISchoolPlusStudent) _then;

/// Create a copy of ISchoolPlusStudent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ISchoolPlusStudent].
extension ISchoolPlusStudentPatterns on ISchoolPlusStudent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ISchoolPlusStudent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ISchoolPlusStudent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ISchoolPlusStudent value)  $default,){
final _that = this;
switch (_that) {
case _ISchoolPlusStudent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ISchoolPlusStudent value)?  $default,){
final _that = this;
switch (_that) {
case _ISchoolPlusStudent() when $default != null:
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
case _ISchoolPlusStudent() when $default != null:
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
case _ISchoolPlusStudent():
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
case _ISchoolPlusStudent() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ISchoolPlusStudent implements ISchoolPlusStudent {
  const _ISchoolPlusStudent({this.id, this.name});
  factory _ISchoolPlusStudent.fromJson(Map<String, dynamic> json) => _$ISchoolPlusStudentFromJson(json);

@override final  String? id;
@override final  String? name;

/// Create a copy of ISchoolPlusStudent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ISchoolPlusStudentCopyWith<_ISchoolPlusStudent> get copyWith => __$ISchoolPlusStudentCopyWithImpl<_ISchoolPlusStudent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ISchoolPlusStudentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ISchoolPlusStudent&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ISchoolPlusStudent(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ISchoolPlusStudentCopyWith<$Res> implements $ISchoolPlusStudentCopyWith<$Res> {
  factory _$ISchoolPlusStudentCopyWith(_ISchoolPlusStudent value, $Res Function(_ISchoolPlusStudent) _then) = __$ISchoolPlusStudentCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name
});




}
/// @nodoc
class __$ISchoolPlusStudentCopyWithImpl<$Res>
    implements _$ISchoolPlusStudentCopyWith<$Res> {
  __$ISchoolPlusStudentCopyWithImpl(this._self, this._then);

  final _ISchoolPlusStudent _self;
  final $Res Function(_ISchoolPlusStudent) _then;

/// Create a copy of ISchoolPlusStudent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_ISchoolPlusStudent(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
