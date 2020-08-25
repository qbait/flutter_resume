// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Work _$WorkFromJson(Map<String, dynamic> json) {
  return Work(
    company: json['company'] as String,
    position: json['position'] as String,
    startDate: json['startDate'] as String,
    endDate: json['endDate'] as String,
    summary: json['summary'] as String,
  );
}

Map<String, dynamic> _$WorkToJson(Work instance) => <String, dynamic>{
      'company': instance.company,
      'position': instance.position,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'summary': instance.summary,
    };
