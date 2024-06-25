import 'package:flutter/material.dart';

class Storieswidget extends StatelessWidget {
  final int index;
  final String profileName;
  final TextStyle textStyle;

  const Storieswidget({
    super.key,
    required this.index,
    required this.profileName,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: index == 0
          ? Stack(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: const Color.fromRGBO(203, 73, 101, 1),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Theme.of(context).colorScheme.surface,
                        child: Icon(
                          Icons.person,
                          size: 32,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      profileName,
                      style: textStyle,
                    ),
                  ],
                ),
                Positioned(
                  left: 46,
                  top: 46,
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: Theme.of(context).colorScheme.surface,
                    child: const Icon(
                      Icons.add_circle,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            )
          : Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: const Color.fromRGBO(203, 73, 101, 1),
                  child: CircleAvatar(
                    radius: 32,
                    backgroundColor: Theme.of(context).colorScheme.surface,
                    child: Icon(
                      Icons.person,
                      size: 32,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  profileName,
                  style: const TextStyle(fontFamily: 'instagram'),
                ),
              ],
            ),
    );
  }
}