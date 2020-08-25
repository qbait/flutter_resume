// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Language _$LanguageFromJson(Map<String, dynamic> json) {
  return Language(
    language: json['language'] as String,
    fluency: json['fluency'] as String,
  );
}

Map<String, dynamic> _$LanguageToJson(Language instance) => <String, dynamic>{
      'language': instance.language,
      'fluency': instance.fluency,
    };
