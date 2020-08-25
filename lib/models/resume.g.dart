// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resume _$ResumeFromJson(Map<String, dynamic> json) {
  return Resume(
    basics: json['basics'] == null
        ? null
        : Basics.fromJson(json['basics'] as Map<String, dynamic>),
    work: (json['work'] as List)
        ?.map(
            (e) => e == null ? null : Work.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    education: (json['education'] as List)
        ?.map((e) =>
            e == null ? null : Education.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    languages: (json['languages'] as List)
        ?.map((e) =>
            e == null ? null : Language.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ResumeToJson(Resume instance) => <String, dynamic>{
      'basics': instance.basics?.toJson(),
      'work': instance.work?.map((e) => e?.toJson())?.toList(),
      'education': instance.education?.map((e) => e?.toJson())?.toList(),
      'languages': instance.languages?.map((e) => e?.toJson())?.toList(),
    };
