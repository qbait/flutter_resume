import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeadingRow extends StatelessWidget {
  final String text;

  HeadingRow(this.text) : super();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        text,
        style: textTheme.headline4,
      ),
    );
  }
}
