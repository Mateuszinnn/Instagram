import 'package:flutter/material.dart';

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
                            return Container(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer,
                              child: SingleChildScrollView(
                                controller: scrollController,
                                child: Column(
                                  children: <Widget>[
                                    const SizedBox(height: 10),
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
                                          fontSize: 20),
                                    ),
                                    const SizedBox(height: 10),
                                    const Divider(height: 0.1,),
                                    const SizedBox(height: 10),
                                    Column(
                                      children: List.generate(
                                        10,
                                        (index) => Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              12, 18, 12, 12),
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 17.1,
                                                backgroundColor:
                                                    Theme.of(context)
                                                        .colorScheme
                                                        .primary,
                                                child: CircleAvatar(
                                                  radius: 17,
                                                  backgroundColor:
                                                      Theme.of(context)
                                                          .colorScheme
                                                          .surface,
                                                  child: Icon(
                                                    Icons.person,
                                                    size: 17,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 10,),
                                              const Column(
                                                children: [
                                                   SizedBox(
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text(
                                                          'Profile Name',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'instagram bold'),
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
                                                ],
                                              ),
                                              const Spacer(),
                                              Icon(Icons.favorite_border, color: Theme.of(context).colorScheme.tertiary,),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
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
            color: isSaved ? Colors.white : null,
          ),
        ),
      ],
    );
  }
}
