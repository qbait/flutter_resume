import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailedRow extends StatelessWidget {
  final String heading;
  final String title;
  final String subtitle;

  DetailedRow({Key key, this.heading, this.title, this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (heading != null)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Text(
                heading,
                style: textTheme.headline6,
              ),
            ),
          if (title != null)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Text(
                title,
                style: textTheme.bodyText2,
              ),
            ),
          if (subtitle != null)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                subtitle,
                style: textTheme.caption,
              ),
            ),
          Divider(),
        ],
      ),
    );
  }
}
