import 'package:flutter_resume/models/work.dart';
import 'package:json_annotation/json_annotation.dart';

import 'basics.dart';
import 'education.dart';
import 'language.dart';

part 'resume.g.dart';

@JsonSerializable(explicitToJson: true)
class Resume {
  Basics basics;
  List<Work> work;
  List<Education> education;
  List<Language> languages;

  Resume({this.basics, this.work, this.education, this.languages});

  factory Resume.fromJson(Map<String, dynamic> json) => _$ResumeFromJson(json);

  Map<String, dynamic> toJson() => _$ResumeToJson(this);
}
