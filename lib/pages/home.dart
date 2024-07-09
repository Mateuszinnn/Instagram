import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/chat_section.dart';
import 'package:instagram/components/notification_widgets/notification_section.dart';
import 'package:instagram/components/post_widget.dart';
import 'package:instagram/components/stories_widget.dart';

enum Menu { seguidores, favoritos }

List<String> posts = [
  "assets/images/mineira.jpg",
  "assets/images/images.jpeg",
  "assets/images/sushi.jpeg",
  "assets/images/tacos.jpg",
  "assets/images/pasta.jpeg",
  "assets/images/cachorro-quente.jpg",
  "assets/images/pizza.jpeg",
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  Future<void> _refresh() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                backgroundColor: Theme.of(context).colorScheme.surface,
                elevation: 0,
                shadowColor: Colors.black,
                title: Row(
                  children: [
                    Image.asset(
                      Theme.of(context).brightness == Brightness.dark
                          ? 'assets/images/Instagram_logo_darkmode.png'
                          : 'assets/images/Instagram_logo_lightmode.png',
                      fit: BoxFit.contain,
                      height: Theme.of(context).colorScheme.brightness ==
                              Brightness.dark
                          ? 36.45
                          : 46.45,
                    ),
                    PopupMenuButton(
                      icon: const Icon(Icons.keyboard_arrow_down_outlined),
                      color:
                          Theme.of(context).colorScheme.surface.withOpacity(0.8),
                      onSelected: (Menu item) {},
                      offset: const Offset(-120, kToolbarHeight),
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<Menu>>[
                        const PopupMenuItem<Menu>(
                          value: Menu.seguidores,
                          child: ListTile(
                            title: Row(
                              children: [
                                Text('Seguidores'),
                                Spacer(),
                                Icon(Icons.group_outlined),
                              ],
                            ),
                          ),
                        ),
                        const PopupMenuItem<Menu>(
                          value: Menu.favoritos,
                          child: ListTile(
                            title: Row(
                              children: [
                                Text('Favoritos'),
                                Spacer(),
                                Icon(Icons.star_outline),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.favorite_border),
                    color: Theme.of(context).colorScheme.primary,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const NotificationSection() ));
                    },
                    enableFeedback: false,
                  ),
                  IconButton(
                    icon: const Icon(FontAwesomeIcons.comment,),
                    color: Theme.of(context).colorScheme.primary,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const ChatSection() ));
                    },
                    enableFeedback: false,
                  ),
                  const SizedBox(width: 7,)
                ],
              ),
              Container(
                color: Theme.of(context).colorScheme.surface,
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          30,
                          (index) => Storieswidget(
                            index: index,
                            profileName: 'Profile Name', textStyle: const TextStyle(fontFamily: 'instagram'),
                          ),
                        ),
                      ),
                    ),
                    Column(
                        children: List.generate(
                            7, (index) => PostWidget(image: posts[index])))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
