import 'package:flutter/material.dart';
import 'package:instagram/components/post_widgets/comment_section/comment_chat.dart';
import 'package:instagram/pages/other_profile.dart';

class PostBottom extends StatelessWidget {
  const PostBottom({super.key});

  @override
  Widget build(BuildContext context) {
    double widthTotal = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: SizedBox(
                  height: 20,
                  child: Stack(
                    children: [
                      const Text(
                        'Profile Name',
                        style: TextStyle(
                          fontFamily: 'instagram',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OtherProfile()),
                          );
                        },
                        child: const Text('                 '),
                      ),
                    ],
                  ),
                ),
              ),
              const Text(
                'Lorem ipsum dolor sit amet',
                style: TextStyle(
                  fontFamily: 'instagram',
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: SizedBox(
                    height: 20,
                    child: Stack(
                      children: [
                        const Text(
                          'Ver todos os comentários',
                          style: TextStyle(
                            fontFamily: 'instagram',
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              isDismissible: true,
                              builder: (BuildContext context) {
                                return CommentChat(widthTotal: widthTotal);
                              },
                            );
                          },
                          child: const Text(
                              '                                        '),
                        ),
                      ],
                    )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Text(
                      'Há x minutos',
                      style: TextStyle(
                          fontFamily: 'instagram', color: Colors.grey),
                    ),
                  ),
                  Text(
                    'Ver tradução',
                    style: TextStyle(
                      fontFamily: 'instagram',
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
