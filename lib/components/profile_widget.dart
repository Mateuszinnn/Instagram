import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String profileName;
  final double paddingLeft;
  final double paddingTop;
  final double paddingRight;
  final double paddingBottom;
  final double size;
  final bool isColumn;

  const ProfileWidget(
      {super.key,
      required this.profileName,
      required this.paddingLeft,
      required this.paddingTop,
      required this.paddingRight,
      required this.paddingBottom,
      required this.size,
      required this.isColumn});

  @override
  Widget build(BuildContext context) {
    return isColumn == true
        ? Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    paddingLeft, paddingTop, paddingRight, paddingBottom),
                child: CircleAvatar(
                  radius: size + 0.1,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  child: CircleAvatar(
                    radius: size,
                    backgroundColor: Theme.of(context).colorScheme.surface,
                    child: Icon(
                      Icons.person,
                      size: size,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
              Text(
                profileName,
                style: const TextStyle(
                  fontFamily: 'instagram bold',
                  color: Colors.white,
                ),
              ),
            ],
          )
        : Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    paddingLeft, paddingTop, paddingRight, paddingBottom),
                child: CircleAvatar(
                  radius: size + 0.1,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  child: CircleAvatar(
                    radius: size,
                    backgroundColor: Theme.of(context).colorScheme.surface,
                    child: Icon(
                      Icons.person,
                      size: size,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
              Text(
                profileName,
                style: const TextStyle(
                  fontFamily: 'instagram bold',
                  color: Colors.white,
                ),
              ),
            ],
          );
  }
}
