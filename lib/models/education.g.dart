// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Education _$EducationFromJson(Map<String, dynamic> json) {
  return Education(
    institution: json['institution'] as String,
    area: json['area'] as String,
    studyType: json['studyType'] as String,
    startDate: json['startDate'] as String,
    endDate: json['endDate'] as String,
  );
}

Map<String, dynamic> _$EducationToJson(Education instance) => <String, dynamic>{
      'institution': instance.institution,
      'area': instance.area,
      'studyType': instance.studyType,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };
