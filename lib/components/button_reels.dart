import 'package:flutter/material.dart';

class ButtonReels extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color iconColor;
  final Color textColor;
  final String fontFamily;
  final IconData icon;
  final bool isFilled;

  const ButtonReels({
    super.key,
    required this.onPressed,
    required this.text,
    required this.icon,
    required this.isFilled,
    this.iconColor = Colors.white,
    required this.textColor,
    this.fontFamily = 'Instagram',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        isFilled
            ? FilledButton(
                onPressed: onPressed,
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                      Theme.of(context).colorScheme.tertiary),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                  ),
                  padding: WidgetStateProperty.all(
                    const EdgeInsets.all(10.0),
                  ),
                ),
                child: Icon(
                  icon,
                  color: Theme.of(context).colorScheme.primary,
                ),
              )
            : IconButton(
                icon: Icon(icon, color: iconColor),
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
