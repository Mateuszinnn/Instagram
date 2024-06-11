import 'package:flutter/material.dart';

class PostBottomsheet extends StatelessWidget {
  final IconData icon;
  final String label;
  final double height;
  final double width;
  final int index;

  const PostBottomsheet({
    Key? key,
    required this.icon,
    required this.label,
    required this.height,
    required this.width,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: index == 0
              ? const EdgeInsets.fromLTRB(10, 10, 5, 10)
              : const EdgeInsets.fromLTRB(5, 10, 10, 10),
          child: SizedBox(
            height: height,
            width: width == 185 ? width : 181,
            child: FilledButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
                    Theme.of(context).colorScheme.tertiary),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  Text(
                    label,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontFamily: 'Instagram',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
