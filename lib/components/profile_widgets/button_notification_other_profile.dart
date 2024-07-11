import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonNotificationOtherProfile extends StatefulWidget {
  final String text;
  const ButtonNotificationOtherProfile({super.key, required this.text});

  @override
  State<ButtonNotificationOtherProfile> createState() =>
      _ButtonNotificationOtherProfileState();
}

class _ButtonNotificationOtherProfileState
    extends State<ButtonNotificationOtherProfile> {
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        Text(
          widget.text,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontFamily: 'Instagram',
            color: Theme.of(context).colorScheme.primary,
            fontSize: 16,
          ),
        ),
        const Spacer(),
        CupertinoSwitch(
          value: switchValue,
          thumbColor: Theme.of(context).colorScheme.surface,
          activeColor: switchValue == true ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.surface,
          trackColor: Theme.of(context).colorScheme.onSecondary,
          onChanged: (bool value) {
            setState(() {
              switchValue = value;
            });
          },
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
