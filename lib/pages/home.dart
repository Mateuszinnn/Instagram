import 'package:flutter/material.dart';
import 'package:instagram/components/postwidget.dart';
import 'package:instagram/components/storieswidget.dart';

enum Menu { seguidores, favoritos }
List <String> posts = [
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              height:
                  Theme.of(context).colorScheme.brightness == Brightness.dark
                      ? 36.45
                      : 46.45,
            ),
            PopupMenuButton(
              icon: const Icon(Icons.keyboard_arrow_down_outlined),
              color: Theme.of(context).colorScheme.surface.withOpacity(0.8),
              onSelected: (Menu item) {},
              offset: const Offset(-120, kToolbarHeight),
              itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
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
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: IconButton(
              icon: const Icon(Icons.favorite_border),
              color: Theme.of(context).colorScheme.primary,
              onPressed: () {},
              enableFeedback: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: IconButton(
              icon: const Icon(Icons.chat_bubble_outline_rounded),
              color: Theme.of(context).colorScheme.primary,
              onPressed: () {},
              enableFeedback: false,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
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
                      profileName: 'Profile Name',
                    ),
                  ),
                ),
              ),
              Column(children: List.generate(7, (index) => PostWidget(image: posts[index])))
            ],
          ),
        ),
      ),
    );
  }
}
