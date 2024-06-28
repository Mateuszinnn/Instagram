import 'package:flutter/material.dart';
import 'package:instagram/components/profile_widget.dart';
import 'package:instagram/pages/other_profile.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            const Divider(
              height: 0.1,
              thickness: 0.1,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
              child: Row(
                children: [
                  const Text(
                    'Recentes',
                    style: TextStyle(
                        fontFamily: 'Instagram',
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Ver tudo',
                        style: TextStyle(
                            fontFamily: 'Instagram',
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 15),
                      )),
                ],
              ),
            ),
            Column(
                children: List.generate(
              20,
              (index) => Row(
                children: [
                  Stack(
                    children: [
                      const ProfileWidget(
                          profileName: 'Profile Name',
                          paddingLeft: 15,
                          paddingTop: 5,
                          paddingRight: 5,
                          paddingBottom: 5,
                          size: 25,
                          isColumn: false),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                        child: SizedBox(
                          height: 50,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const OtherProfile()),
                              );
                            },
                            child:
                                const Text('                                '),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.close,
                        color: Color(0xFFA8A8A8),
                      )),
                  const SizedBox(
                    width: 5,
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
