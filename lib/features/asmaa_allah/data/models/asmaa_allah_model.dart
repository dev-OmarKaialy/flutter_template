// To parse this JSON data, do
//
//     final asmaaAllahModel = asmaaAllahModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'asmaa_allah_model.freezed.dart';
part 'asmaa_allah_model.g.dart';

AsmaaAllahModel asmaaAllahModelFromJson(String str) => AsmaaAllahModel.fromJson(json.decode(str));

String asmaaAllahModelToJson(AsmaaAllahModel data) => json.encode(data.toJson());

@freezed
sealed class AsmaaAllahModel with _$AsmaaAllahModel {
  const factory AsmaaAllahModel({
    @JsonKey(name: "code") int? code,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "data") AsmaaAllahDataModel? data,
  }) = _AsmaaAllahModel;

  factory AsmaaAllahModel.fromJson(Map<String, dynamic> json) => _$AsmaaAllahModelFromJson(json);
}

@freezed
sealed class AsmaaAllahDataModel with _$AsmaaAllahDataModel {
  const factory AsmaaAllahDataModel({
    @JsonKey(name: "names") List<NameModel>? names,
    @JsonKey(name: "total") int? total,
    @JsonKey(name: "language") String? language,
    @JsonKey(name: "language_code") String? languageCode,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "arabic_title") String? arabicTitle,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "recitation_benefits") String? recitationBenefits,
    @JsonKey(name: "hadith") String? hadith,
  }) = _AsmaaAllahDataModel;

  factory AsmaaAllahDataModel.fromJson(Map<String, dynamic> json) =>
      _$AsmaaAllahDataModelFromJson(json);
}

@freezed
sealed class NameModel with _$NameModel {
  const factory NameModel({
    @JsonKey(name: "number") int? number,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "transliteration") String? transliteration,
    @JsonKey(name: "translation") String? translation,
    @JsonKey(name: "meaning") String? meaning,
    @JsonKey(name: "audio") String? audio,
  }) = _NameModel;

  factory NameModel.fromJson(Map<String, dynamic> json) => _$NameModelFromJson(json);
}
