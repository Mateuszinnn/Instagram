import 'package:flutter/material.dart';
import 'package:instagram/components/profile_widget.dart';

class CommentList extends StatelessWidget {
  const CommentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        10,
        (index) => Padding(
          padding: const EdgeInsets.fromLTRB(12, 22, 12, 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileWidget(
                profileName: '',
                paddingLeft: 12,
                paddingTop: 18,
                paddingRight: 1,
                paddingBottom: 12,
                size: 17,
                isColumn: false,
                hasDescription: false,
                  description: ''
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Profile Name',
                              style: TextStyle(
                                fontFamily: 'instagram bold',
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'X dias',
                              style: TextStyle(
                                fontFamily: 'instagram bold',
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet',
                          style: TextStyle(
                            fontFamily: 'instagram',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      Text(
                        'Responder',
                        style: TextStyle(
                          fontFamily: 'instagram bold',
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Ver tradução',
                        style: TextStyle(
                          fontFamily: 'instagram bold',
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 0.5,
                        width: 10,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Ver mais x comentários',
                        style: TextStyle(
                          fontFamily: 'instagram bold',
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                  const Text(
                    '10',
                    style: TextStyle(
                      fontFamily: 'instagram bold',
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
