import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SimpleRow extends StatelessWidget {
  final String text;

  SimpleRow(this.text) : super();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: textTheme.bodyText2,
          ),
          Divider()
        ],
      ),
    );
  }
}
