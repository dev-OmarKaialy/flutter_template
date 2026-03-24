// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asmaa_allah_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AsmaaAllahModel {

@JsonKey(name: "code") int? get code;@JsonKey(name: "status") String? get status;@JsonKey(name: "data") AsmaaAllahDataModel? get data;
/// Create a copy of AsmaaAllahModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AsmaaAllahModelCopyWith<AsmaaAllahModel> get copyWith => _$AsmaaAllahModelCopyWithImpl<AsmaaAllahModel>(this as AsmaaAllahModel, _$identity);

  /// Serializes this AsmaaAllahModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AsmaaAllahModel&&(identical(other.code, code) || other.code == code)&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,status,data);

@override
String toString() {
  return 'AsmaaAllahModel(code: $code, status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $AsmaaAllahModelCopyWith<$Res>  {
  factory $AsmaaAllahModelCopyWith(AsmaaAllahModel value, $Res Function(AsmaaAllahModel) _then) = _$AsmaaAllahModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "code") int? code,@JsonKey(name: "status") String? status,@JsonKey(name: "data") AsmaaAllahDataModel? data
});


$AsmaaAllahDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class _$AsmaaAllahModelCopyWithImpl<$Res>
    implements $AsmaaAllahModelCopyWith<$Res> {
  _$AsmaaAllahModelCopyWithImpl(this._self, this._then);

  final AsmaaAllahModel _self;
  final $Res Function(AsmaaAllahModel) _then;

/// Create a copy of AsmaaAllahModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? status = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AsmaaAllahDataModel?,
  ));
}
/// Create a copy of AsmaaAllahModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AsmaaAllahDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $AsmaaAllahDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AsmaaAllahModel].
extension AsmaaAllahModelPatterns on AsmaaAllahModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AsmaaAllahModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AsmaaAllahModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AsmaaAllahModel value)  $default,){
final _that = this;
switch (_that) {
case _AsmaaAllahModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AsmaaAllahModel value)?  $default,){
final _that = this;
switch (_that) {
case _AsmaaAllahModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "code")  int? code, @JsonKey(name: "status")  String? status, @JsonKey(name: "data")  AsmaaAllahDataModel? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AsmaaAllahModel() when $default != null:
return $default(_that.code,_that.status,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "code")  int? code, @JsonKey(name: "status")  String? status, @JsonKey(name: "data")  AsmaaAllahDataModel? data)  $default,) {final _that = this;
switch (_that) {
case _AsmaaAllahModel():
return $default(_that.code,_that.status,_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "code")  int? code, @JsonKey(name: "status")  String? status, @JsonKey(name: "data")  AsmaaAllahDataModel? data)?  $default,) {final _that = this;
switch (_that) {
case _AsmaaAllahModel() when $default != null:
return $default(_that.code,_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AsmaaAllahModel implements AsmaaAllahModel {
  const _AsmaaAllahModel({@JsonKey(name: "code") this.code, @JsonKey(name: "status") this.status, @JsonKey(name: "data") this.data});
  factory _AsmaaAllahModel.fromJson(Map<String, dynamic> json) => _$AsmaaAllahModelFromJson(json);

@override@JsonKey(name: "code") final  int? code;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "data") final  AsmaaAllahDataModel? data;

/// Create a copy of AsmaaAllahModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AsmaaAllahModelCopyWith<_AsmaaAllahModel> get copyWith => __$AsmaaAllahModelCopyWithImpl<_AsmaaAllahModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AsmaaAllahModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AsmaaAllahModel&&(identical(other.code, code) || other.code == code)&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,status,data);

@override
String toString() {
  return 'AsmaaAllahModel(code: $code, status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AsmaaAllahModelCopyWith<$Res> implements $AsmaaAllahModelCopyWith<$Res> {
  factory _$AsmaaAllahModelCopyWith(_AsmaaAllahModel value, $Res Function(_AsmaaAllahModel) _then) = __$AsmaaAllahModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "code") int? code,@JsonKey(name: "status") String? status,@JsonKey(name: "data") AsmaaAllahDataModel? data
});


@override $AsmaaAllahDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class __$AsmaaAllahModelCopyWithImpl<$Res>
    implements _$AsmaaAllahModelCopyWith<$Res> {
  __$AsmaaAllahModelCopyWithImpl(this._self, this._then);

  final _AsmaaAllahModel _self;
  final $Res Function(_AsmaaAllahModel) _then;

/// Create a copy of AsmaaAllahModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? status = freezed,Object? data = freezed,}) {
  return _then(_AsmaaAllahModel(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AsmaaAllahDataModel?,
  ));
}

/// Create a copy of AsmaaAllahModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AsmaaAllahDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $AsmaaAllahDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$AsmaaAllahDataModel {

@JsonKey(name: "names") List<NameModel>? get names;@JsonKey(name: "total") int? get total;@JsonKey(name: "language") String? get language;@JsonKey(name: "language_code") String? get languageCode;@JsonKey(name: "title") String? get title;@JsonKey(name: "arabic_title") String? get arabicTitle;@JsonKey(name: "description") String? get description;@JsonKey(name: "recitation_benefits") String? get recitationBenefits;@JsonKey(name: "hadith") String? get hadith;
/// Create a copy of AsmaaAllahDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AsmaaAllahDataModelCopyWith<AsmaaAllahDataModel> get copyWith => _$AsmaaAllahDataModelCopyWithImpl<AsmaaAllahDataModel>(this as AsmaaAllahDataModel, _$identity);

  /// Serializes this AsmaaAllahDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AsmaaAllahDataModel&&const DeepCollectionEquality().equals(other.names, names)&&(identical(other.total, total) || other.total == total)&&(identical(other.language, language) || other.language == language)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.title, title) || other.title == title)&&(identical(other.arabicTitle, arabicTitle) || other.arabicTitle == arabicTitle)&&(identical(other.description, description) || other.description == description)&&(identical(other.recitationBenefits, recitationBenefits) || other.recitationBenefits == recitationBenefits)&&(identical(other.hadith, hadith) || other.hadith == hadith));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(names),total,language,languageCode,title,arabicTitle,description,recitationBenefits,hadith);

@override
String toString() {
  return 'AsmaaAllahDataModel(names: $names, total: $total, language: $language, languageCode: $languageCode, title: $title, arabicTitle: $arabicTitle, description: $description, recitationBenefits: $recitationBenefits, hadith: $hadith)';
}


}

/// @nodoc
abstract mixin class $AsmaaAllahDataModelCopyWith<$Res>  {
  factory $AsmaaAllahDataModelCopyWith(AsmaaAllahDataModel value, $Res Function(AsmaaAllahDataModel) _then) = _$AsmaaAllahDataModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "names") List<NameModel>? names,@JsonKey(name: "total") int? total,@JsonKey(name: "language") String? language,@JsonKey(name: "language_code") String? languageCode,@JsonKey(name: "title") String? title,@JsonKey(name: "arabic_title") String? arabicTitle,@JsonKey(name: "description") String? description,@JsonKey(name: "recitation_benefits") String? recitationBenefits,@JsonKey(name: "hadith") String? hadith
});




}
/// @nodoc
class _$AsmaaAllahDataModelCopyWithImpl<$Res>
    implements $AsmaaAllahDataModelCopyWith<$Res> {
  _$AsmaaAllahDataModelCopyWithImpl(this._self, this._then);

  final AsmaaAllahDataModel _self;
  final $Res Function(AsmaaAllahDataModel) _then;

/// Create a copy of AsmaaAllahDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? names = freezed,Object? total = freezed,Object? language = freezed,Object? languageCode = freezed,Object? title = freezed,Object? arabicTitle = freezed,Object? description = freezed,Object? recitationBenefits = freezed,Object? hadith = freezed,}) {
  return _then(_self.copyWith(
names: freezed == names ? _self.names : names // ignore: cast_nullable_to_non_nullable
as List<NameModel>?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,arabicTitle: freezed == arabicTitle ? _self.arabicTitle : arabicTitle // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,recitationBenefits: freezed == recitationBenefits ? _self.recitationBenefits : recitationBenefits // ignore: cast_nullable_to_non_nullable
as String?,hadith: freezed == hadith ? _self.hadith : hadith // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AsmaaAllahDataModel].
extension AsmaaAllahDataModelPatterns on AsmaaAllahDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AsmaaAllahDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AsmaaAllahDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AsmaaAllahDataModel value)  $default,){
final _that = this;
switch (_that) {
case _AsmaaAllahDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AsmaaAllahDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _AsmaaAllahDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "names")  List<NameModel>? names, @JsonKey(name: "total")  int? total, @JsonKey(name: "language")  String? language, @JsonKey(name: "language_code")  String? languageCode, @JsonKey(name: "title")  String? title, @JsonKey(name: "arabic_title")  String? arabicTitle, @JsonKey(name: "description")  String? description, @JsonKey(name: "recitation_benefits")  String? recitationBenefits, @JsonKey(name: "hadith")  String? hadith)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AsmaaAllahDataModel() when $default != null:
return $default(_that.names,_that.total,_that.language,_that.languageCode,_that.title,_that.arabicTitle,_that.description,_that.recitationBenefits,_that.hadith);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "names")  List<NameModel>? names, @JsonKey(name: "total")  int? total, @JsonKey(name: "language")  String? language, @JsonKey(name: "language_code")  String? languageCode, @JsonKey(name: "title")  String? title, @JsonKey(name: "arabic_title")  String? arabicTitle, @JsonKey(name: "description")  String? description, @JsonKey(name: "recitation_benefits")  String? recitationBenefits, @JsonKey(name: "hadith")  String? hadith)  $default,) {final _that = this;
switch (_that) {
case _AsmaaAllahDataModel():
return $default(_that.names,_that.total,_that.language,_that.languageCode,_that.title,_that.arabicTitle,_that.description,_that.recitationBenefits,_that.hadith);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "names")  List<NameModel>? names, @JsonKey(name: "total")  int? total, @JsonKey(name: "language")  String? language, @JsonKey(name: "language_code")  String? languageCode, @JsonKey(name: "title")  String? title, @JsonKey(name: "arabic_title")  String? arabicTitle, @JsonKey(name: "description")  String? description, @JsonKey(name: "recitation_benefits")  String? recitationBenefits, @JsonKey(name: "hadith")  String? hadith)?  $default,) {final _that = this;
switch (_that) {
case _AsmaaAllahDataModel() when $default != null:
return $default(_that.names,_that.total,_that.language,_that.languageCode,_that.title,_that.arabicTitle,_that.description,_that.recitationBenefits,_that.hadith);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AsmaaAllahDataModel implements AsmaaAllahDataModel {
  const _AsmaaAllahDataModel({@JsonKey(name: "names") final  List<NameModel>? names, @JsonKey(name: "total") this.total, @JsonKey(name: "language") this.language, @JsonKey(name: "language_code") this.languageCode, @JsonKey(name: "title") this.title, @JsonKey(name: "arabic_title") this.arabicTitle, @JsonKey(name: "description") this.description, @JsonKey(name: "recitation_benefits") this.recitationBenefits, @JsonKey(name: "hadith") this.hadith}): _names = names;
  factory _AsmaaAllahDataModel.fromJson(Map<String, dynamic> json) => _$AsmaaAllahDataModelFromJson(json);

 final  List<NameModel>? _names;
@override@JsonKey(name: "names") List<NameModel>? get names {
  final value = _names;
  if (value == null) return null;
  if (_names is EqualUnmodifiableListView) return _names;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "total") final  int? total;
@override@JsonKey(name: "language") final  String? language;
@override@JsonKey(name: "language_code") final  String? languageCode;
@override@JsonKey(name: "title") final  String? title;
@override@JsonKey(name: "arabic_title") final  String? arabicTitle;
@override@JsonKey(name: "description") final  String? description;
@override@JsonKey(name: "recitation_benefits") final  String? recitationBenefits;
@override@JsonKey(name: "hadith") final  String? hadith;

/// Create a copy of AsmaaAllahDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AsmaaAllahDataModelCopyWith<_AsmaaAllahDataModel> get copyWith => __$AsmaaAllahDataModelCopyWithImpl<_AsmaaAllahDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AsmaaAllahDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AsmaaAllahDataModel&&const DeepCollectionEquality().equals(other._names, _names)&&(identical(other.total, total) || other.total == total)&&(identical(other.language, language) || other.language == language)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.title, title) || other.title == title)&&(identical(other.arabicTitle, arabicTitle) || other.arabicTitle == arabicTitle)&&(identical(other.description, description) || other.description == description)&&(identical(other.recitationBenefits, recitationBenefits) || other.recitationBenefits == recitationBenefits)&&(identical(other.hadith, hadith) || other.hadith == hadith));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_names),total,language,languageCode,title,arabicTitle,description,recitationBenefits,hadith);

@override
String toString() {
  return 'AsmaaAllahDataModel(names: $names, total: $total, language: $language, languageCode: $languageCode, title: $title, arabicTitle: $arabicTitle, description: $description, recitationBenefits: $recitationBenefits, hadith: $hadith)';
}


}

/// @nodoc
abstract mixin class _$AsmaaAllahDataModelCopyWith<$Res> implements $AsmaaAllahDataModelCopyWith<$Res> {
  factory _$AsmaaAllahDataModelCopyWith(_AsmaaAllahDataModel value, $Res Function(_AsmaaAllahDataModel) _then) = __$AsmaaAllahDataModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "names") List<NameModel>? names,@JsonKey(name: "total") int? total,@JsonKey(name: "language") String? language,@JsonKey(name: "language_code") String? languageCode,@JsonKey(name: "title") String? title,@JsonKey(name: "arabic_title") String? arabicTitle,@JsonKey(name: "description") String? description,@JsonKey(name: "recitation_benefits") String? recitationBenefits,@JsonKey(name: "hadith") String? hadith
});




}
/// @nodoc
class __$AsmaaAllahDataModelCopyWithImpl<$Res>
    implements _$AsmaaAllahDataModelCopyWith<$Res> {
  __$AsmaaAllahDataModelCopyWithImpl(this._self, this._then);

  final _AsmaaAllahDataModel _self;
  final $Res Function(_AsmaaAllahDataModel) _then;

/// Create a copy of AsmaaAllahDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? names = freezed,Object? total = freezed,Object? language = freezed,Object? languageCode = freezed,Object? title = freezed,Object? arabicTitle = freezed,Object? description = freezed,Object? recitationBenefits = freezed,Object? hadith = freezed,}) {
  return _then(_AsmaaAllahDataModel(
names: freezed == names ? _self._names : names // ignore: cast_nullable_to_non_nullable
as List<NameModel>?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,languageCode: freezed == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,arabicTitle: freezed == arabicTitle ? _self.arabicTitle : arabicTitle // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,recitationBenefits: freezed == recitationBenefits ? _self.recitationBenefits : recitationBenefits // ignore: cast_nullable_to_non_nullable
as String?,hadith: freezed == hadith ? _self.hadith : hadith // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$NameModel {

@JsonKey(name: "number") int? get number;@JsonKey(name: "name") String? get name;@JsonKey(name: "transliteration") String? get transliteration;@JsonKey(name: "translation") String? get translation;@JsonKey(name: "meaning") String? get meaning;@JsonKey(name: "audio") String? get audio;
/// Create a copy of NameModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NameModelCopyWith<NameModel> get copyWith => _$NameModelCopyWithImpl<NameModel>(this as NameModel, _$identity);

  /// Serializes this NameModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NameModel&&(identical(other.number, number) || other.number == number)&&(identical(other.name, name) || other.name == name)&&(identical(other.transliteration, transliteration) || other.transliteration == transliteration)&&(identical(other.translation, translation) || other.translation == translation)&&(identical(other.meaning, meaning) || other.meaning == meaning)&&(identical(other.audio, audio) || other.audio == audio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,name,transliteration,translation,meaning,audio);

@override
String toString() {
  return 'NameModel(number: $number, name: $name, transliteration: $transliteration, translation: $translation, meaning: $meaning, audio: $audio)';
}


}

/// @nodoc
abstract mixin class $NameModelCopyWith<$Res>  {
  factory $NameModelCopyWith(NameModel value, $Res Function(NameModel) _then) = _$NameModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "number") int? number,@JsonKey(name: "name") String? name,@JsonKey(name: "transliteration") String? transliteration,@JsonKey(name: "translation") String? translation,@JsonKey(name: "meaning") String? meaning,@JsonKey(name: "audio") String? audio
});




}
/// @nodoc
class _$NameModelCopyWithImpl<$Res>
    implements $NameModelCopyWith<$Res> {
  _$NameModelCopyWithImpl(this._self, this._then);

  final NameModel _self;
  final $Res Function(NameModel) _then;

/// Create a copy of NameModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = freezed,Object? name = freezed,Object? transliteration = freezed,Object? translation = freezed,Object? meaning = freezed,Object? audio = freezed,}) {
  return _then(_self.copyWith(
number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,transliteration: freezed == transliteration ? _self.transliteration : transliteration // ignore: cast_nullable_to_non_nullable
as String?,translation: freezed == translation ? _self.translation : translation // ignore: cast_nullable_to_non_nullable
as String?,meaning: freezed == meaning ? _self.meaning : meaning // ignore: cast_nullable_to_non_nullable
as String?,audio: freezed == audio ? _self.audio : audio // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NameModel].
extension NameModelPatterns on NameModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NameModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NameModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NameModel value)  $default,){
final _that = this;
switch (_that) {
case _NameModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NameModel value)?  $default,){
final _that = this;
switch (_that) {
case _NameModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "number")  int? number, @JsonKey(name: "name")  String? name, @JsonKey(name: "transliteration")  String? transliteration, @JsonKey(name: "translation")  String? translation, @JsonKey(name: "meaning")  String? meaning, @JsonKey(name: "audio")  String? audio)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NameModel() when $default != null:
return $default(_that.number,_that.name,_that.transliteration,_that.translation,_that.meaning,_that.audio);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "number")  int? number, @JsonKey(name: "name")  String? name, @JsonKey(name: "transliteration")  String? transliteration, @JsonKey(name: "translation")  String? translation, @JsonKey(name: "meaning")  String? meaning, @JsonKey(name: "audio")  String? audio)  $default,) {final _that = this;
switch (_that) {
case _NameModel():
return $default(_that.number,_that.name,_that.transliteration,_that.translation,_that.meaning,_that.audio);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "number")  int? number, @JsonKey(name: "name")  String? name, @JsonKey(name: "transliteration")  String? transliteration, @JsonKey(name: "translation")  String? translation, @JsonKey(name: "meaning")  String? meaning, @JsonKey(name: "audio")  String? audio)?  $default,) {final _that = this;
switch (_that) {
case _NameModel() when $default != null:
return $default(_that.number,_that.name,_that.transliteration,_that.translation,_that.meaning,_that.audio);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NameModel implements NameModel {
  const _NameModel({@JsonKey(name: "number") this.number, @JsonKey(name: "name") this.name, @JsonKey(name: "transliteration") this.transliteration, @JsonKey(name: "translation") this.translation, @JsonKey(name: "meaning") this.meaning, @JsonKey(name: "audio") this.audio});
  factory _NameModel.fromJson(Map<String, dynamic> json) => _$NameModelFromJson(json);

@override@JsonKey(name: "number") final  int? number;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "transliteration") final  String? transliteration;
@override@JsonKey(name: "translation") final  String? translation;
@override@JsonKey(name: "meaning") final  String? meaning;
@override@JsonKey(name: "audio") final  String? audio;

/// Create a copy of NameModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NameModelCopyWith<_NameModel> get copyWith => __$NameModelCopyWithImpl<_NameModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NameModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NameModel&&(identical(other.number, number) || other.number == number)&&(identical(other.name, name) || other.name == name)&&(identical(other.transliteration, transliteration) || other.transliteration == transliteration)&&(identical(other.translation, translation) || other.translation == translation)&&(identical(other.meaning, meaning) || other.meaning == meaning)&&(identical(other.audio, audio) || other.audio == audio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,name,transliteration,translation,meaning,audio);

@override
String toString() {
  return 'NameModel(number: $number, name: $name, transliteration: $transliteration, translation: $translation, meaning: $meaning, audio: $audio)';
}


}

/// @nodoc
abstract mixin class _$NameModelCopyWith<$Res> implements $NameModelCopyWith<$Res> {
  factory _$NameModelCopyWith(_NameModel value, $Res Function(_NameModel) _then) = __$NameModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "number") int? number,@JsonKey(name: "name") String? name,@JsonKey(name: "transliteration") String? transliteration,@JsonKey(name: "translation") String? translation,@JsonKey(name: "meaning") String? meaning,@JsonKey(name: "audio") String? audio
});




}
/// @nodoc
class __$NameModelCopyWithImpl<$Res>
    implements _$NameModelCopyWith<$Res> {
  __$NameModelCopyWithImpl(this._self, this._then);

  final _NameModel _self;
  final $Res Function(_NameModel) _then;

/// Create a copy of NameModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = freezed,Object? name = freezed,Object? transliteration = freezed,Object? translation = freezed,Object? meaning = freezed,Object? audio = freezed,}) {
  return _then(_NameModel(
number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,transliteration: freezed == transliteration ? _self.transliteration : transliteration // ignore: cast_nullable_to_non_nullable
as String?,translation: freezed == translation ? _self.translation : translation // ignore: cast_nullable_to_non_nullable
as String?,meaning: freezed == meaning ? _self.meaning : meaning // ignore: cast_nullable_to_non_nullable
as String?,audio: freezed == audio ? _self.audio : audio // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
