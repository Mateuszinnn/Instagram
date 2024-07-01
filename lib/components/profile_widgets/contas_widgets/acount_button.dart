import 'package:flutter/material.dart';

class AcountButton extends StatelessWidget {
  final double widhtButton;
  final IconData icon;
  final String text;
  final Color color;
  final bool isTopRounded;
  final bool isBottomRounded;
  final Color backgroundColor;
  final bool hasDescription;
  final String description;
  final bool hasIcon;

  const AcountButton({
    super.key,
    required this.widhtButton,
    required this.icon,
    required this.text,
    required this.hasDescription,
    required this.description,
    required this.hasIcon,
    required this.color,
    this.isTopRounded = false,
    this.isBottomRounded = false,
    this.backgroundColor = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widhtButton,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.vertical(
          top: isTopRounded ? const Radius.circular(5.0) : Radius.zero,
          bottom: isBottomRounded ? const Radius.circular(5.0) : Radius.zero,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: TextButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              hasIcon
                  ? Icon(
                      icon,
                      color: Theme.of(context).colorScheme.primary,
                    )
                  : const SizedBox.shrink(),
              const SizedBox(
                width: 5,
              ),
              hasDescription
                  ? Column(
                      children: [
                        Text(
                          text,
                          style: TextStyle(
                              fontFamily: 'Instagram',
                              color: color),
                        ),
                        Text(
                          description,
                          style: const TextStyle(
                              fontFamily: 'Instagram', color: Colors.grey),
                        ),
                      ],
                    )
                  : Text(
                      text,
                      style: TextStyle(
                          fontFamily: 'Instagram',
                          color: color),
                    ),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios_rounded)
            ],
          ),
        ),
      ),
    );
  }
}
