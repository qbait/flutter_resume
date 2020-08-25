import 'package:json_annotation/json_annotation.dart';

part 'education.g.dart';

@JsonSerializable()
class Education {
  String institution;
  String area;
  String studyType;
  String startDate;
  String endDate;

  Education(
      {this.institution,
      this.area,
      this.studyType,
      this.startDate,
      this.endDate});

  factory Education.fromJson(Map<String, dynamic> json) =>
      _$EducationFromJson(json);

  Map<String, dynamic> toJson() => _$EducationToJson(this);
}
