import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_resume/stores/resume_store.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../views/resume_view.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Observer(builder: (context) {
        final store = Provider.of<ResumeStore>(context);

        switch (store.loader.status) {
          case FutureStatus.pending:
            return CircularProgressIndicator();
          case FutureStatus.rejected:
            return Text('Something went wrong');
          default:
            return ResumeView(resume: store.resume);
        }
      })),
    );
  }
}
