import 'package:flutter/material.dart';

class ButtonReels extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color iconColor;
  final Color textColor;
  final String fontFamily;
  final Icon icon;

  const ButtonReels({
    super.key,
    required this.onPressed,
    required this.text,
    required this.icon,
    this.iconColor = Colors.white,
    this.textColor = Colors.white,
    this.fontFamily = 'Instagram',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: icon,
          color: iconColor,
          onPressed: onPressed,
        ),
        Text(
          text,
          style: TextStyle(
            fontFamily: fontFamily,
            color: textColor,
          ),
        ),
      ],
    );
  }
}
