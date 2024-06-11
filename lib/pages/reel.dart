import 'package:flutter/material.dart';
import 'package:instagram/components/button_reels.dart';

class ReelPage extends StatefulWidget {
  const ReelPage({super.key});

  @override
  _ReelPageState createState() => _ReelPageState();
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
                    icon: const Icon(Icons.camera_alt_outlined)),
                const Spacer(),
                ButtonReels(
                  onPressed: () {},
                  text: 'Curtidas',
                  icon: const Icon(
                    Icons.favorite_border_outlined,
                  ),
                ),
                ButtonReels(
                    onPressed: () {},
                    text: 'Comentários',
                    icon: const Icon(
                      Icons.chat_bubble_outline,
                    )),
                ButtonReels(
                    onPressed: () {},
                    text: 'Compartilhar',
                    icon: const Icon(
                      Icons.send_outlined,
                    )),
                ButtonReels(
                    onPressed: () {},
                    text: '',
                    icon: const Icon(
                      Icons.more_horiz,
                    )),
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
                const Padding(
                  padding: EdgeInsets.fromLTRB(12, 18, 12, 12),
                  child: CircleAvatar(
                    radius: 17.1,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 17,
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.person,
                        size: 17,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Profile Name',
                  style: TextStyle(
                      fontFamily: 'instagram bold',
                      color: Colors.white),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  height: 25,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: WidgetStateProperty.all(
                        const BorderSide(
                            color: Colors.white),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Seguir',
                      style: TextStyle(
                        fontFamily: 'Instagram',
                        color: Colors.white
                      ),
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
