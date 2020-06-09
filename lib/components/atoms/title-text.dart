import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;

  TitleText({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      textDirection: TextDirection.ltr,
      style: Theme
          .of(context)
          .textTheme
          .headline3,
    );
  }
}