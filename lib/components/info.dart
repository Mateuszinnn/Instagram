import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  final String text;
  final String text2;
  final Color textColor;
  final String fontFamily;
  final double fontsize;

  const Info({
    Key? key,
    required this.text,
    required this.text2,
    required this.fontsize,
    required this.textColor,
    this.fontFamily = 'Instagram',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            fontFamily: fontFamily,
            color: textColor,
            fontSize: fontsize,
          ),
        ),
        Text(
          text2,
          style: TextStyle(
            fontFamily: fontFamily,
            color: textColor,
          ),
        ),
      ],
    );
  }
}
