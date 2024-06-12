import 'package:flutter/material.dart';
import 'package:instagram/components/post_widgets/comment_section/comment_chat.dart';


class PostInteractionButton extends StatelessWidget {
  final bool isFavorite;
  final VoidCallback toggleFavorite;
  final bool isSaved;
  final VoidCallback toggleSaved;

  const PostInteractionButton({
    super.key,
    required this.isFavorite,
    required this.toggleFavorite,
    required this.isSaved,
    required this.toggleSaved,
  });

  @override
  Widget build(BuildContext context) {
    double widthTotal = MediaQuery.of(context).size.width;

    return Row(
      children: [
        IconButton(
          onPressed: toggleFavorite,
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? Colors.red : null,
          ),
        ),
        IconButton(
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
          icon: const Icon(Icons.chat_bubble_outline),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.send_outlined),
        ),
        const Spacer(),
        IconButton(
          onPressed: toggleSaved,
          icon: Icon(
            isSaved ? Icons.bookmark : Icons.bookmark_border_sharp,
            color: isSaved ? Theme.of(context).colorScheme.primary : null,
          ),
        ),
      ],
    );
  }
}
