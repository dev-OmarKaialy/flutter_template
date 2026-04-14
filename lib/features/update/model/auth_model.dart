// To parse this JSON data, do
//
//     final authModel = authModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

List<AuthModel> authModelFromJson(String str) =>
    List<AuthModel>.from(json.decode(str).map((x) => AuthModel.fromJson(x)));

String authModelToJson(List<AuthModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
sealed class AuthModel with _$AuthModel {
  const factory AuthModel({
    @JsonKey(name: "full_name") String? fullName,
    @JsonKey(name: "user_name") String? userName,
    @JsonKey(name: "type_name") String? typeName,
    @JsonKey(name: "type_id") int? typeId,
    @JsonKey(name: "token_val") String? tokenVal,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) => _$AuthModelFromJson(json);
}
