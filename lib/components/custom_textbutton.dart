import 'package:flutter/material.dart';

class CustomTextbutton extends StatelessWidget {
  final String text;
  final double width;
  final VoidCallback onPressed;
  final double height;
  final String description;
  final bool isColumn;

  const CustomTextbutton({
    required this.text,
    required this.width,
    required this.onPressed,
    required this.height,
    required this.description,
    required this.isColumn,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isColumn
        ? SizedBox(
          height: height,
          width: width,
          child: FilledButton(
            onPressed: onPressed,
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                Theme.of(context).colorScheme.secondary,
              ),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontFamily: 'Instagram',
                      ),
                    ),
                    Text(
                      description,
                      style: const TextStyle(
                        color: Color(0xFFA8A8A8),
                        fontFamily: 'Instagram',
                      ),
                    ),
                  ]),
            ),
          ),
        )
        : SizedBox(
          height: height,
          width: width,
          child: FilledButton(
            onPressed: onPressed,
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                Theme.of(context).colorScheme.secondary,
              ),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
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
        );
  }
}
