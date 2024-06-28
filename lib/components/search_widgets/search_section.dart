import 'package:flutter/material.dart';
import 'package:instagram/components/profile_widget.dart';
import 'package:instagram/pages/other_profile.dart';

class SearchSection extends StatelessWidget {
  final bool followButton;

  const SearchSection({super.key, required this.followButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                        isColumn: false,
                        hasDescription: true,
                        description: 'Descrição'),
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
                          child: const Text('                                '),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                followButton == true ?
                SizedBox(
                  height: 30,
                  child: FilledButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                          Colors.blue),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Seguir',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Instagram'),
                    ),
                  ),
                ) : const SizedBox(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.close,
                      color: Color(0xFFA8A8A8),
                      size: 18,
                    )),
                const SizedBox(
                  width: 5,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
