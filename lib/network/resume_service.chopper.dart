// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ResumeService extends ResumeService {
  _$ResumeService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ResumeService;

  @override
  Future<Response<Resume>> getResume() {
    final $url =
        '/qbait/f7c74d3e47f37df8704efe9bca88ea1b/raw/273f80eda8d4dc7d88022234734c3d3899cc966f/resume.json';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Resume, Resume>($request);
  }
}
