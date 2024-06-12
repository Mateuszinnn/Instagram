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
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                  child: SingleChildScrollView(
                                    controller: scrollController,
                                    padding: const EdgeInsets.only(top: 80),
                                    child: Column(
                                      children: List.generate(
                                        10,
                                        (index) => Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              12, 22, 12, 12),
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
                                              const SizedBox(width: 10),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text(
                                                              'Profile Name',
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'instagram bold',
                                                              ),
                                                            ),
                                                            SizedBox(width: 10),
                                                            Text(
                                                              'X dias',
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'instagram bold',
                                                                  color: Colors
                                                                      .grey),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          'Lorem ipsum dolor sit amet',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'instagram',
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
                                                            fontFamily:
                                                                'instagram bold',
                                                            color: Colors.grey,
                                                            fontSize: 13),
                                                      ),
                                                      SizedBox(width: 10),
                                                      Text(
                                                        'Ver tradução',
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'instagram bold',
                                                            color: Colors.grey,
                                                            fontSize: 13),
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
                                                          fontFamily:
                                                              'instagram bold',
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
                                                        color: Colors.grey),
                                                    onPressed: () {},
                                                  ),
                                                  const Text(
                                                    '10',
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'instagram bold',
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 30),
                                        Container(
                                          width: 50,
                                          height: 5,
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(10),
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
                                  child: Container(
                                    width: widthTotal,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                    child: Column(
                                      children: [
                                        const Divider(
                                          height: 0.5,
                                          thickness: 0.1,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Row(
                                          children: [
                                            Spacer(),
                                            Text(
                                              '❤️',
                                              style: TextStyle(
                                                fontSize: 22,
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              '🙌',
                                              style: TextStyle(
                                                fontSize: 22,
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              '🔥',
                                              style: TextStyle(
                                                fontSize: 22,
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              '👏',
                                              style: TextStyle(
                                                fontSize: 22,
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              '😭',
                                              style: TextStyle(
                                                fontSize: 22,
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              '😍',
                                              style: TextStyle(
                                                fontSize: 22,
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              '😮',
                                              style: TextStyle(
                                                fontSize: 22,
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              '😂',
                                              style: TextStyle(
                                                fontSize: 22,
                                              ),
                                            ),
                                            Spacer(),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                              child: CircleAvatar(
                                                radius: 24.1,
                                                backgroundColor: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                                child: CircleAvatar(
                                                  radius: 24,
                                                  backgroundColor:
                                                      Theme.of(context)
                                                          .colorScheme
                                                          .surface,
                                                  child: Icon(
                                                    Icons.person,
                                                    size: 24,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                child: SizedBox(
                                                  height: 50,
                                                  width: 50,
                                                  child: TextField(
                                                    style: const TextStyle(
                                                      fontFamily: 'Instagram',
                                                      color: Colors.white,
                                                    ),
                                                    decoration: InputDecoration(
                                                      suffixIcon: Icon(
                                                        Icons.gif_box_outlined,
                                                        color: Theme.of(context).colorScheme.primary,
                                                      ),
                                                      hintText:
                                                          'Adicione um comentário para compartilhar',
                                                      hintStyle: const TextStyle(
                                                        color: Color(0xFFA8A8A8),
                                                      ),
                                                      filled: true,
                                                      fillColor: Theme.of(context)
                                                          .colorScheme
                                                          .secondary,
                                                      border:
                                                          const OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                          Radius.circular(15),
                                                        ),
                                                        
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
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
