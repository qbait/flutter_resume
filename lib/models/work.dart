import 'package:json_annotation/json_annotation.dart';

part 'work.g.dart';

@JsonSerializable()
class Work {
  String company;
  String position;
  String startDate;
  String endDate;
  String summary;

  Work(
      {this.company,
      this.position,
      this.startDate,
      this.endDate,
      this.summary});

  factory Work.fromJson(Map<String, dynamic> json) => _$WorkFromJson(json);

  Map<String, dynamic> toJson() => _$WorkToJson(this);
}
