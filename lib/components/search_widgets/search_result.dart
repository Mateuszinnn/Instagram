import 'package:flutter/material.dart';
import 'package:instagram/components/profile_widget.dart';
import 'package:instagram/pages/other_profile.dart';

class SearchResult extends StatefulWidget {
  final bool followButton;
  final bool closeIcon;

  const SearchResult({super.key, required this.followButton, required this.closeIcon});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    return Row(
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
        widget.followButton == true
            ? SizedBox(
                height: 30,
                child: FilledButton(
                  onPressed: () {
                    setState(() {
                      isFollowing = !isFollowing;
                    });
                  },
                  style: isFollowing
                      ? ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                              Theme.of(context).colorScheme.tertiary),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        )
                      : ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.blue),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                  child: isFollowing
                      ? const Text(
                          'Seguindo',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Instagram'),
                        )
                      : const Text(
                          'Seguir',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Instagram'),
                        ),
                ),
              )
            : const SizedBox(),
        isFollowing || widget.closeIcon == true
            ? const SizedBox(
                width: 10,
              )
            : IconButton(
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
    );
  }
}
