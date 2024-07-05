import 'package:flutter/material.dart';

class CustomTextbutton extends StatelessWidget {
  final String text;
  final double width;
  final VoidCallback onPressed;

  const CustomTextbutton({
    required this.text,
    required this.width,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SizedBox(
        width: width,
        child: FilledButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(
              Theme.of(context).colorScheme.secondary,
            ),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontFamily: 'Instagram',
            ),
          ),
        ),
      ),
    );
  }
}
