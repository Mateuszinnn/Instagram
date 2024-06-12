import 'package:flutter/material.dart';
import 'package:instagram/components/post_widgets/comment_section/comment_input.dart';
import 'package:instagram/components/post_widgets/comment_section/comment_list.dart';

class CommentChat extends StatelessWidget {
  final double widthTotal;

  const CommentChat({super.key, required this.widthTotal});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.pop(context),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {},
            child: DraggableScrollableSheet(
              initialChildSize: 1.0,
              minChildSize: 0.25,
              maxChildSize: 1.0,
              expand: true,
              builder: (context, scrollController) {
                return Stack(
                  children: [
                    Container(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      child: SingleChildScrollView(
                        controller: scrollController,
                        padding: const EdgeInsets.only(top: 80),
                        child: const CommentList(),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                        child: Column(
                          children: [
                            const SizedBox(height: 30),
                            Container(
                              width: 50,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Comentários',
                              style: TextStyle(
                                fontFamily: 'Instagram',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Divider(
                              height: 0.5,
                              thickness: 0.1,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: CommentInput(widthTotal: widthTotal),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
