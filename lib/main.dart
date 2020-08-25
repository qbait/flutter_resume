import 'package:flutter/material.dart';
import 'package:flutter_resume/stores/resume_store.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<ResumeStore>(create: (_) => ResumeStore()..init()),
      ],
      child: MyApp(),
    ),
  );
}
