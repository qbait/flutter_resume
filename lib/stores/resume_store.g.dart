// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ResumeStore on _ResumeStore, Store {
  final _$loaderAtom = Atom(name: '_ResumeStore.loader');

  @override
  ObservableFuture<void> get loader {
    _$loaderAtom.reportRead();
    return super.loader;
  }

  @override
  set loader(ObservableFuture<void> value) {
    _$loaderAtom.reportWrite(value, super.loader, () {
      super.loader = value;
    });
  }

  final _$resumeAtom = Atom(name: '_ResumeStore.resume');

  @override
  Resume get resume {
    _$resumeAtom.reportRead();
    return super.resume;
  }

  @override
  set resume(Resume value) {
    _$resumeAtom.reportWrite(value, super.resume, () {
      super.resume = value;
    });
  }

  final _$_loadResumeAsyncAction = AsyncAction('_ResumeStore._loadResume');

  @override
  Future<void> _loadResume() {
    return _$_loadResumeAsyncAction.run(() => super._loadResume());
  }

  @override
  String toString() {
    return '''
loader: ${loader},
resume: ${resume}
    ''';
  }
}
