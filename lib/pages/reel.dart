import 'package:flutter/material.dart';
import 'package:instagram/components/button_reels.dart';
import 'package:instagram/components/post_widgets/comment_section/comment_chat.dart';
import 'package:instagram/components/post_widgets/more_section/more_button.dart';
import 'package:instagram/components/post_widgets/send_section/send_button.dart';
import 'package:instagram/components/profile_widget.dart';
import 'package:instagram/pages/other_profile.dart';
import 'package:instagram/pages/publication.dart';

List<String> posts = [
  "assets/images/pizza.jpeg",
  "assets/images/mineira.jpg",
  "assets/images/tacos.jpg",
  "assets/images/pasta.jpeg",
  "assets/images/cachorro-quente.jpg",
  "assets/images/tomato.jpg",
];

class ReelPage extends StatefulWidget {
  const ReelPage({super.key});

  @override
  State<ReelPage> createState() => _ReelPageState();
}

class _ReelPageState extends State<ReelPage> {
  bool isLiked = false;
  bool isFollowing = false;

  void toggleFavorite() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  Future<void> _refresh() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double widthTotal = MediaQuery.of(context).size.width;
    double widthButtonBottomsheet = (widthTotal / 2) - 15;
    double height = 70;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return SizedBox(
              height: MediaQuery.of(context).size.height - 70,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      posts[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 35,
                          ),
                          ButtonReels(
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(
                                context,
                                '/publication',
                                (Route<dynamic> route) => false,
                              );
                            },
                            text: '',
                            icon: Icons.camera_alt_outlined,
                            isFilled: false,
                            textColor: Colors.white,
                          ),
                          const Spacer(),
                          ButtonReels(
                            onPressed: toggleFavorite,
                            text: 'Curtidas',
                            icon: isLiked == false
                                ? Icons.favorite_border_outlined
                                : Icons.favorite,
                            isFilled: false,
                            textColor: Colors.white,
                          ),
                          ButtonReels(
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
                            text: 'Comentários',
                            icon: Icons.chat_bubble_outline,
                            isFilled: false,
                            textColor: Colors.white,
                          ),
                          ButtonReels(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (BuildContext context) {
                                  return SendButton(widthTotal: widthTotal);
                                },
                              );
                            },
                            text: 'Compartilhar',
                            icon: Icons.send_outlined,
                            isFilled: false,
                            textColor: Colors.white,
                          ),
                          ButtonReels(
                            onPressed: () {
                              showModalBottomSheet(
                                showDragHandle: true,
                                backgroundColor: Theme.of(context)
                                    .colorScheme
                                    .onPrimaryContainer,
                                context: context,
                                builder: (BuildContext context) {
                                  return MoreButton(
                                    height: height,
                                    widthButton: widthButtonBottomsheet,
                                  );
                                },
                              );
                            },
                            text: '',
                            icon: Icons.more_horiz,
                            isFilled: false,
                            textColor: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: Stack(children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        color: Colors.black,
                                      ),
                                      child: const Icon(
                                        Icons.person,
                                        size: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 28,
                                  top: 28,
                                  child: CircleAvatar(
                                    radius: 10,
                                    backgroundColor: Colors.black,
                                    child: Icon(
                                      size: 16,
                                      Icons.music_note,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
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
                                  description: ''),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const OtherProfile()),
                                    );
                                  },
                                  child: const Text(
                                      '                                '),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                            child: OutlinedButton(
                              style: ButtonStyle(
                                side: WidgetStateProperty.all(
                                  const BorderSide(color: Colors.white),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  isFollowing = !isFollowing;
                                });
                              },
                              child: isFollowing == true
                                  ? const Text(
                                      'Seguindo',
                                      style: TextStyle(
                                          fontFamily: 'Instagram',
                                          color: Colors.white),
                                    )
                                  : const Text(
                                      'Seguir',
                                      style: TextStyle(
                                          fontFamily: 'Instagram',
                                          color: Colors.white),
                                    ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(12, 0, 12, 12),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Lorem ipsum dolor sir',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Instagram'),
                            )),
                      )
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
