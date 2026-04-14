// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthModel {

@JsonKey(name: "full_name") String? get fullName;@JsonKey(name: "user_name") String? get userName;@JsonKey(name: "type_name") String? get typeName;@JsonKey(name: "type_id") int? get typeId;@JsonKey(name: "token_val") String? get tokenVal;
/// Create a copy of AuthModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthModelCopyWith<AuthModel> get copyWith => _$AuthModelCopyWithImpl<AuthModel>(this as AuthModel, _$identity);

  /// Serializes this AuthModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthModel&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.typeId, typeId) || other.typeId == typeId)&&(identical(other.tokenVal, tokenVal) || other.tokenVal == tokenVal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,userName,typeName,typeId,tokenVal);

@override
String toString() {
  return 'AuthModel(fullName: $fullName, userName: $userName, typeName: $typeName, typeId: $typeId, tokenVal: $tokenVal)';
}


}

/// @nodoc
abstract mixin class $AuthModelCopyWith<$Res>  {
  factory $AuthModelCopyWith(AuthModel value, $Res Function(AuthModel) _then) = _$AuthModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "full_name") String? fullName,@JsonKey(name: "user_name") String? userName,@JsonKey(name: "type_name") String? typeName,@JsonKey(name: "type_id") int? typeId,@JsonKey(name: "token_val") String? tokenVal
});




}
/// @nodoc
class _$AuthModelCopyWithImpl<$Res>
    implements $AuthModelCopyWith<$Res> {
  _$AuthModelCopyWithImpl(this._self, this._then);

  final AuthModel _self;
  final $Res Function(AuthModel) _then;

/// Create a copy of AuthModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = freezed,Object? userName = freezed,Object? typeName = freezed,Object? typeId = freezed,Object? tokenVal = freezed,}) {
  return _then(_self.copyWith(
fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,typeName: freezed == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String?,typeId: freezed == typeId ? _self.typeId : typeId // ignore: cast_nullable_to_non_nullable
as int?,tokenVal: freezed == tokenVal ? _self.tokenVal : tokenVal // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthModel].
extension AuthModelPatterns on AuthModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthModel value)  $default,){
final _that = this;
switch (_that) {
case _AuthModel():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuthModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "full_name")  String? fullName, @JsonKey(name: "user_name")  String? userName, @JsonKey(name: "type_name")  String? typeName, @JsonKey(name: "type_id")  int? typeId, @JsonKey(name: "token_val")  String? tokenVal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthModel() when $default != null:
return $default(_that.fullName,_that.userName,_that.typeName,_that.typeId,_that.tokenVal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "full_name")  String? fullName, @JsonKey(name: "user_name")  String? userName, @JsonKey(name: "type_name")  String? typeName, @JsonKey(name: "type_id")  int? typeId, @JsonKey(name: "token_val")  String? tokenVal)  $default,) {final _that = this;
switch (_that) {
case _AuthModel():
return $default(_that.fullName,_that.userName,_that.typeName,_that.typeId,_that.tokenVal);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "full_name")  String? fullName, @JsonKey(name: "user_name")  String? userName, @JsonKey(name: "type_name")  String? typeName, @JsonKey(name: "type_id")  int? typeId, @JsonKey(name: "token_val")  String? tokenVal)?  $default,) {final _that = this;
switch (_that) {
case _AuthModel() when $default != null:
return $default(_that.fullName,_that.userName,_that.typeName,_that.typeId,_that.tokenVal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthModel implements AuthModel {
  const _AuthModel({@JsonKey(name: "full_name") this.fullName, @JsonKey(name: "user_name") this.userName, @JsonKey(name: "type_name") this.typeName, @JsonKey(name: "type_id") this.typeId, @JsonKey(name: "token_val") this.tokenVal});
  factory _AuthModel.fromJson(Map<String, dynamic> json) => _$AuthModelFromJson(json);

@override@JsonKey(name: "full_name") final  String? fullName;
@override@JsonKey(name: "user_name") final  String? userName;
@override@JsonKey(name: "type_name") final  String? typeName;
@override@JsonKey(name: "type_id") final  int? typeId;
@override@JsonKey(name: "token_val") final  String? tokenVal;

/// Create a copy of AuthModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthModelCopyWith<_AuthModel> get copyWith => __$AuthModelCopyWithImpl<_AuthModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthModel&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.typeId, typeId) || other.typeId == typeId)&&(identical(other.tokenVal, tokenVal) || other.tokenVal == tokenVal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,userName,typeName,typeId,tokenVal);

@override
String toString() {
  return 'AuthModel(fullName: $fullName, userName: $userName, typeName: $typeName, typeId: $typeId, tokenVal: $tokenVal)';
}


}

/// @nodoc
abstract mixin class _$AuthModelCopyWith<$Res> implements $AuthModelCopyWith<$Res> {
  factory _$AuthModelCopyWith(_AuthModel value, $Res Function(_AuthModel) _then) = __$AuthModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "full_name") String? fullName,@JsonKey(name: "user_name") String? userName,@JsonKey(name: "type_name") String? typeName,@JsonKey(name: "type_id") int? typeId,@JsonKey(name: "token_val") String? tokenVal
});




}
/// @nodoc
class __$AuthModelCopyWithImpl<$Res>
    implements _$AuthModelCopyWith<$Res> {
  __$AuthModelCopyWithImpl(this._self, this._then);

  final _AuthModel _self;
  final $Res Function(_AuthModel) _then;

/// Create a copy of AuthModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = freezed,Object? userName = freezed,Object? typeName = freezed,Object? typeId = freezed,Object? tokenVal = freezed,}) {
  return _then(_AuthModel(
fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,typeName: freezed == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String?,typeId: freezed == typeId ? _self.typeId : typeId // ignore: cast_nullable_to_non_nullable
as int?,tokenVal: freezed == tokenVal ? _self.tokenVal : tokenVal // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
