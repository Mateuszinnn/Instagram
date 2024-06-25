import 'package:flutter/material.dart';
import 'package:instagram/components/button_reels.dart';
import 'package:instagram/components/profile_widget.dart';

class ReelPage extends StatefulWidget {
  const ReelPage({super.key});

  @override
  State<ReelPage> createState() => _ReelPageState();
}

class _ReelPageState extends State<ReelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/tomato.jpg',
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
                  onPressed: () {},
                  text: '',
                  icon: Icons.camera_alt_outlined,
                  isFilled: false,
                  textColor: Colors.white,
                ),
                const Spacer(),
                ButtonReels(
                  onPressed: () {},
                  text: 'Curtidas',
                  icon: Icons.favorite_border_outlined,
                  isFilled: false,
                  textColor: Colors.white,
                ),
                ButtonReels(
                  onPressed: () {},
                  text: 'Comentários',
                  icon: Icons.chat_bubble_outline,
                  isFilled: false,
                  textColor: Colors.white,
                ),
                ButtonReels(
                  onPressed: () {},
                  text: 'Compartilhar',
                  icon: Icons.send_outlined,
                  isFilled: false,
                  textColor: Colors.white,
                ),
                ButtonReels(
                  onPressed: () {},
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
                              borderRadius: BorderRadius.circular(12.0),
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
                const ProfileWidget(
                  profileName: 'Profile Name',
                  paddingLeft: 12,
                  paddingTop: 18,
                  paddingRight: 12,
                  paddingBottom: 12,
                  size: 17,
                  isColumn: false,
                ),
                const SizedBox(width: 10),
                SizedBox(
                  height: 25,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: WidgetStateProperty.all(
                        const BorderSide(color: Colors.white),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Seguir',
                      style: TextStyle(
                          fontFamily: 'Instagram', color: Colors.white),
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
                    style:
                        TextStyle(color: Colors.white, fontFamily: 'Instagram'),
                  )),
            )
          ],
        )
      ]),
    );
  }
}
