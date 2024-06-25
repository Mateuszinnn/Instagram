import 'package:flutter/material.dart';
import 'package:instagram/components/storieswidget.dart';
import 'package:instagram/components/info_profile.dart';

class OtherProfile extends StatefulWidget {
  const OtherProfile({super.key});

  @override
  State<OtherProfile> createState() => _ProfileState();
}

class _ProfileState extends State<OtherProfile> {
  @override
  Widget build(BuildContext context) {
    double widthTela = MediaQuery.of(context).size.width / 3.059;
    double widhtTotal = MediaQuery.of(context).size.width;
    double widthButton = (widhtTotal / 2) - 15;
    double height = widthButton <= 170 ? 60 : 30;
    double imageHeight = widthTela;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Theme.of(context).colorScheme.surface,
              elevation: 0,
              shadowColor: Colors.black,
              title: Row(
                children: [
                  Text(
                    'Profile name',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontFamily: 'Instagram',
                        fontSize: widhtTotal <= 390 ? 17 : null),
                  ),
                ],
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_none_rounded,
                    size: 30,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    size: 30,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(
                  width: 7,
                )
              ],
            ),
            Container(
              color: Theme.of(context).colorScheme.surface,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Storieswidget(index: 1, profileName: 'Profile Name', textStyle: TextStyle(fontFamily: 'instagram', fontWeight: FontWeight.bold),),
                      ),
                      const Spacer(),
                      Info(
                        text: 'X',
                        text2: 'publicações',
                        fontsize: 20,
                        textColor: Theme.of(context).colorScheme.primary,
                      ),
                      const Spacer(),
                      Info(
                        text: 'X',
                        text2: 'seguidores',
                        fontsize: 20,
                        textColor: Theme.of(context).colorScheme.primary,
                      ),
                      const Spacer(),
                      Info(
                        text: 'X',
                        text2: 'seguindo',
                        fontsize: 20,
                        textColor: Theme.of(context).colorScheme.primary,
                      ),
                      const Spacer(),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: SizedBox(
                            height: 30,
                            child: IntrinsicWidth(
                              child: FilledButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all(
                                      Theme.of(context).colorScheme.secondary),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.adobe,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    Text(
                                      'Profile name',
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          fontFamily: 'Instagram'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Descrição',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontFamily: 'Instagram'),
                        ),
                        Text(
                          'Ver Tradução',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontFamily: 'Instagram',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
                        child: SizedBox(
                          height: height,
                          width: widthButton == 185 ? 181 : widthButton,
                          child: IntrinsicWidth(
                            child: FilledButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(
                                    Theme.of(context).colorScheme.secondary),
                                shape: WidgetStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                              child: Text(
                                'Seguindo',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontFamily: 'Instagram'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 10, 10, 10),
                        child: SizedBox(
                          height: height,
                          width: widthButton == 185 ? 181 : widthButton,
                          child: IntrinsicWidth(
                            child: FilledButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all(
                                      Theme.of(context).colorScheme.secondary),
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Mensagem',
                                  style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontFamily: 'Instagram'),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(6, (index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundColor:
                                    Theme.of(context).colorScheme.secondary,
                                child: CircleAvatar(
                                  radius: 32,
                                  backgroundColor:
                                      Theme.of(context).colorScheme.surface,
                                  child: Icon(
                                    Icons.person,
                                    size: 32,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Destaque',
                                style: TextStyle(fontFamily: 'instagram'),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                  DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        const TabBar(
                          dividerColor: Colors.transparent,
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: [
                            Tab(
                              icon: Icon(Icons.grid_on),
                            ),
                            Tab(
                              icon: Icon(Icons.video_library),
                            ),
                            Tab(
                              icon: Icon(Icons.person_pin_outlined),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: imageHeight * 3.04 + 2,
                          child: TabBarView(
                            children: [
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        buildSquareImage(
                                            'assets/images/mineira.jpg',
                                            widthTela),
                                        buildSquareImage(
                                            'assets/images/images.jpeg',
                                            widthTela),
                                        buildSquareImage(
                                            'assets/images/pasta.jpeg',
                                            widthTela),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        buildSquareImage(
                                            'assets/images/sushi.jpeg',
                                            widthTela),
                                        buildSquareImage(
                                            'assets/images/tacos.jpg',
                                            widthTela),
                                        buildSquareImage(
                                            'assets/images/pizza.jpeg',
                                            widthTela),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        buildSquareImage(
                                            'assets/images/cachorro-quente.jpg',
                                            widthTela),
                                        buildSquareImage(
                                            'assets/images/tomato.jpg',
                                            widthTela),
                                        buildSquareImage(
                                            'assets/images/images.jpeg',
                                            widthTela),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        buildRectangularImage(
                                            'assets/images/mineira.jpg',
                                            widthTela),
                                        buildRectangularImage(
                                            'assets/images/images.jpeg',
                                            widthTela),
                                        buildRectangularImage(
                                            'assets/images/pasta.jpeg',
                                            widthTela),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        buildRectangularImage(
                                            'assets/images/sushi.jpeg',
                                            widthTela),
                                        buildRectangularImage(
                                            'assets/images/tacos.jpg',
                                            widthTela),
                                        buildRectangularImage(
                                            'assets/images/pizza.jpeg',
                                            widthTela),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        buildRectangularImage(
                                            'assets/images/cachorro-quente.jpg',
                                            widthTela),
                                        buildRectangularImage(
                                            'assets/images/tomato.jpg',
                                            widthTela),
                                        buildRectangularImage(
                                            'assets/images/images.jpeg',
                                            widthTela),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        buildSquareImage(
                                            'assets/images/mineira.jpg',
                                            widthTela),
                                        buildSquareImage(
                                            'assets/images/images.jpeg',
                                            widthTela),
                                        buildSquareImage(
                                            'assets/images/pasta.jpeg',
                                            widthTela),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        buildSquareImage(
                                            'assets/images/sushi.jpeg',
                                            widthTela),
                                        buildSquareImage(
                                            'assets/images/tacos.jpg',
                                            widthTela),
                                        buildSquareImage(
                                            'assets/images/pizza.jpeg',
                                            widthTela),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        buildSquareImage(
                                            'assets/images/cachorro-quente.jpg',
                                            widthTela),
                                        buildSquareImage(
                                            'assets/images/tomato.jpg',
                                            widthTela),
                                        buildSquareImage(
                                            'assets/images/images.jpeg',
                                            widthTela),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildSquareImage(String imagePath, double size) {
  return Container(
    margin: const EdgeInsets.all(1),
    width: size,
    height: size,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget buildRectangularImage(String imagePath, double size) {
  return Container(
    margin: const EdgeInsets.all(1),
    width: size,
    height: 2 * size,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
      ),
    ),
  );
}
