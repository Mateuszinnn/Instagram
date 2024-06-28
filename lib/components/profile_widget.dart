import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String profileName;
  final double paddingLeft;
  final double paddingTop;
  final double paddingRight;
  final double paddingBottom;
  final double size;
  final bool isColumn;
  final bool hasDescription;
  final String description;

  const ProfileWidget(
      {super.key,
      required this.profileName,
      required this.paddingLeft,
      required this.paddingTop,
      required this.paddingRight,
      required this.paddingBottom,
      required this.size,
      required this.isColumn,
      required this.hasDescription,
      required this.description});

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
                style: TextStyle(
                  fontFamily: 'instagram bold',
                  color: Theme.of(context).colorScheme.primary,
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
              hasDescription == true ? 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    profileName,
                    style: TextStyle(
                      fontFamily: 'instagram bold',
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      fontFamily: 'instagram bold',
                      color: Color(0xFFA8A8A8),
                      fontSize: 13,
                    ),
                  ),
                ],
              ) :
              Text(
                    profileName,
                    style: TextStyle(
                      fontFamily: 'instagram bold',
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
            ],
          );
  }
}
