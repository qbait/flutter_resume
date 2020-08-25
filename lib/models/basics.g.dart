// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Basics _$BasicsFromJson(Map<String, dynamic> json) {
  return Basics(
    name: json['name'] as String,
    picture: json['picture'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String,
    website: json['website'] as String,
    summary: json['summary'] as String,
  );
}

Map<String, dynamic> _$BasicsToJson(Basics instance) => <String, dynamic>{
      'name': instance.name,
      'picture': instance.picture,
      'email': instance.email,
      'phone': instance.phone,
      'website': instance.website,
      'summary': instance.summary,
    };
