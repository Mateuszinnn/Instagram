import 'package:flutter/material.dart';
import 'package:instagram/components/button_reels.dart';
import 'package:instagram/components/post_widgets/comment_section/comment_chat.dart';
import 'package:instagram/components/profile_widget.dart';

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
          onPressed: () => showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) {
              return DraggableScrollableSheet(
                expand: false,
                builder: (context, scrollController) {
                  return SingleChildScrollView(
                    controller: scrollController,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      color: Colors.white,
                      child: GestureDetector(
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
                                  padding: const EdgeInsets.only(top: 140),
                                  child: SingleChildScrollView(
                                    child: Column(
                                        children: List.generate(
                                            10,
                                            (index) => Row(
                                                  children: List.generate(
                                                    3,
                                                    (index) => const Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                20, 0, 20, 0),
                                                        child: Row(
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          10),
                                                              child:
                                                                  ProfileWidget(
                                                                profileName:
                                                                    'Profile Name',
                                                                paddingLeft: 0,
                                                                paddingTop: 0,
                                                                paddingRight: 0,
                                                                paddingBottom:
                                                                    10,
                                                                size: 35,
                                                                isColumn: true,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ))),
                                  ),
                                ),
                                Column(
                                  children: [
                                    const SizedBox(height: 20),
                                    Container(
                                      width: 50,
                                      height: 5,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: TextField(
                                        style: const TextStyle(
                                            fontFamily: 'Instagram',
                                            color: Colors.white),
                                        decoration: InputDecoration(
                                          prefixIcon: const Icon(
                                            Icons.search,
                                            color: Color(0xFFA8A8A8),
                                          ),
                                          suffixIcon: const Icon(
                                              Icons.group_add_outlined),
                                          hintText:
                                              'Adicione um comentário para compartilhar',
                                          hintStyle: const TextStyle(
                                            color: Color(0xFFA8A8A8),
                                          ),
                                          filled: true,
                                          fillColor: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          border: const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Divider(
                                      height: 0.5,
                                      thickness: 0.1,
                                    ),
                                  ],
                                ),
                                Positioned(
                                  bottom: 0,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        ButtonReels(onPressed: (){}, text: 'Copiar link', icon: const Icon(Icons.link_rounded)),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
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
