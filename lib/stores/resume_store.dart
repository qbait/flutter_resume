import 'package:flutter_resume/models/resume.dart';
import 'package:flutter_resume/network/resume_service.dart';
import 'package:mobx/mobx.dart';

part 'resume_store.g.dart';

class ResumeStore = _ResumeStore with _$ResumeStore;

abstract class _ResumeStore with Store {
  final ResumeService service = ResumeService.createService();

  @observable
  ObservableFuture<void> loader;

  @observable
  Resume resume;

  @action
  Future<void> _loadResume() async {
    final future = service.getResume();
    resume = (await future).body;
  }

  Future<void> init() async {
    loader = ObservableFuture(_loadResume());

    await loader;
  }
}
