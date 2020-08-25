import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_resume/models/resume.dart';
import 'package:flutter_resume/utils/DateUtils.dart';
import 'package:flutter_resume/views/simple_row.dart';

import 'detailed_row.dart';
import 'heading_row.dart';

class ResumeView extends StatelessWidget {
  final Resume resume;

  ResumeView({Key key, @required this.resume}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        Image.network(
          resume.basics.picture,
          height: 320.0,
          fit: BoxFit.cover,
        ),
        HeadingRow(resume.basics.name),
        SimpleRow(resume.basics.email),
        SimpleRow(resume.basics.phone),
        SimpleRow(resume.basics.website),
        HeadingRow('Summary'),
        SimpleRow(resume.basics.summary),
        HeadingRow('Experience'),
        for (var item in resume.work)
          DetailedRow(
            heading: item.company,
            title: printDateRange(item.startDate, item.endDate),
            subtitle: item.summary,
          ),
        HeadingRow('Education'),
        for (var item in resume.education)
          DetailedRow(
            heading: item.institution,
            title: printDateRange(item.startDate, item.endDate),
            subtitle: item.studyType,
          ),
        HeadingRow('Languages'),
        for (var item in resume.languages)
          DetailedRow(
            title: item.language,
            subtitle: item.fluency,
          ),
      ],
    );
  }
}
