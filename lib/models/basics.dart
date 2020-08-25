import 'package:json_annotation/json_annotation.dart';

part 'basics.g.dart';

@JsonSerializable()
class Basics {
  String name;
  String picture;
  String email;
  String phone;
  String website;
  String summary;

  Basics(
      {this.name,
      this.picture,
      this.email,
      this.phone,
      this.website,
      this.summary});

  factory Basics.fromJson(Map<String, dynamic> json) => _$BasicsFromJson(json);

  Map<String, dynamic> toJson() => _$BasicsToJson(this);
}
