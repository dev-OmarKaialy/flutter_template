// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asmaa_allah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AsmaaAllahModel _$AsmaaAllahModelFromJson(Map<String, dynamic> json) =>
    _AsmaaAllahModel(
      code: (json['code'] as num?)?.toInt(),
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : AsmaaAllahDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AsmaaAllahModelToJson(_AsmaaAllahModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
    };

_AsmaaAllahDataModel _$AsmaaAllahDataModelFromJson(Map<String, dynamic> json) =>
    _AsmaaAllahDataModel(
      names: (json['names'] as List<dynamic>?)
          ?.map((e) => NameModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
      language: json['language'] as String?,
      languageCode: json['language_code'] as String?,
      title: json['title'] as String?,
      arabicTitle: json['arabic_title'] as String?,
      description: json['description'] as String?,
      recitationBenefits: json['recitation_benefits'] as String?,
      hadith: json['hadith'] as String?,
    );

Map<String, dynamic> _$AsmaaAllahDataModelToJson(
  _AsmaaAllahDataModel instance,
) => <String, dynamic>{
  'names': instance.names,
  'total': instance.total,
  'language': instance.language,
  'language_code': instance.languageCode,
  'title': instance.title,
  'arabic_title': instance.arabicTitle,
  'description': instance.description,
  'recitation_benefits': instance.recitationBenefits,
  'hadith': instance.hadith,
};

_NameModel _$NameModelFromJson(Map<String, dynamic> json) => _NameModel(
  number: (json['number'] as num?)?.toInt(),
  name: json['name'] as String?,
  transliteration: json['transliteration'] as String?,
  translation: json['translation'] as String?,
  meaning: json['meaning'] as String?,
  audio: json['audio'] as String?,
);

Map<String, dynamic> _$NameModelToJson(_NameModel instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'transliteration': instance.transliteration,
      'translation': instance.translation,
      'meaning': instance.meaning,
      'audio': instance.audio,
    };
