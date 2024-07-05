import 'package:flutter/material.dart';
import 'package:instagram/components/post_widgets/more_section/more_button.dart';
import 'package:instagram/components/profile_widget.dart';
import 'package:instagram/pages/other_profile.dart';

class PostProfileHeader extends StatelessWidget {
  final double height;
  final double widthButton;

  const PostProfileHeader({
    super.key,
    required this.height,
    required this.widthButton,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            const ProfileWidget(
              profileName: 'Profile Name',
              paddingLeft: 12,
              paddingTop: 18,
              paddingRight: 12,
              paddingBottom: 12,
              size: 17,
              isColumn: false,
              hasDescription: false,
                  description: ''
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(11.0, 11.0, 11.0, 0.0),
              child: SizedBox(
                  width: 133,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OtherProfile()),
                        );
                      },
                      child: const Text(''))),
            )
          ],
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(Icons.more_horiz),
          onPressed: () {
            showModalBottomSheet(
              showDragHandle: true,
              backgroundColor:
                  Theme.of(context).colorScheme.onPrimaryContainer,
              context: context,
              builder: (BuildContext context) {
                return MoreButton(
                  height: height,
                  widthButton: widthButton,
                );
              },
            );
          },
        ),
      ],
    );
  }
}
