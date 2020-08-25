import "dart:async";

import 'package:chopper/chopper.dart';
import 'package:flutter_resume/models/resume.dart';

import 'json_to_type_converter.dart';

part "resume_service.chopper.dart";

@ChopperApi(
    baseUrl:
        '/qbait/f7c74d3e47f37df8704efe9bca88ea1b/raw/273f80eda8d4dc7d88022234734c3d3899cc966f')
abstract class ResumeService extends ChopperService {
  static ResumeService create([ChopperClient client]) =>
      _$ResumeService(client);

  @Get(path: '/resume.json')
  Future<Response<Resume>> getResume();

  static ResumeService createService() {
    final client = ChopperClient(
      baseUrl: 'https://gist.githubusercontent.com/',
      services: [
        _$ResumeService(),
      ],
      converter: JsonToTypeConverter(
          {Resume: (jsonData) => Resume.fromJson(jsonData)}),
      interceptors: [HttpLoggingInterceptor()],
    );
    return _$ResumeService(client);
  }
}
