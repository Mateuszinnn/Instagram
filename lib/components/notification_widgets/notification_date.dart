import 'package:flutter/material.dart';
import 'package:instagram/components/profile_widget.dart';

class NotificationDate extends StatelessWidget {
  final String date;
  final String image;

  const NotificationDate({super.key, required this.date, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
              child: Text(
                date,
                style: TextStyle(
                  fontFamily: 'Instagram',
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: List.generate(
                  4,
                  (index) => Row(
                    children: [
                      const ProfileWidget(
                        profileName: 'Profile Name',
                        paddingLeft: 5,
                        paddingTop: 0,
                        paddingRight: 10,
                        paddingBottom: 5,
                        size: 25,
                        isColumn: false,
                        hasDescription: false,
                        description: '',
                      ),
                      Text(
                        ' curtiu seu story.',
                        style: TextStyle(
                          fontFamily: 'Instagram',
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const Text(
                        ' x dias',
                        style: TextStyle(
                          fontFamily: 'Instagram',
                          color: Color(0xFFA8A8A8),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5.0)),
                          child: Image.asset(
                            image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Divider(
            thickness: 0.1,
            height: 0.1,
          ),
        ],
      ),
    );
  }
}
