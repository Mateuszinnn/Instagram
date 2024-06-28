import 'package:flutter/material.dart';
import 'package:instagram/components/storieswidget.dart';
import 'package:instagram/components/info_profile.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _ProfileState();
}

class _ProfileState extends State<MyProfile> {
  int selectedIndex = 0;

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
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.adobe,
                    size: 30,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_box_outlined,
                    size: 30,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    size: 35,
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
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Storieswidget(
                          index: 0,
                          profileName: 'Profile Name',
                          textStyle: TextStyle(
                              fontFamily: 'instagram',
                              fontWeight: FontWeight.bold),
                        ),
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                              Theme.of(context).colorScheme.secondary),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Painel profissional',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontFamily: 'Instagram',
                                ),
                              ),
                              Text(
                                'X contas alcançadas nos últimos 30 dias',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontFamily: 'Instagram',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 5, 10),
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
                                'Editar perfil',
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
                        padding: const EdgeInsets.fromLTRB(5, 0, 10, 10),
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
                                child: widthButton == 185
                                    ? Text(
                                        ' Compartilhar\n perfil',
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            fontFamily: 'Instagram'),
                                      )
                                    : Text(
                                        ' Compartilhar perfil',
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
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
                        final itemNumber = index + 1;
                        if (itemNumber == 6) {
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
                                      Icons.add,
                                      size: 32,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Novo',
                                  style: TextStyle(fontFamily: 'instagram'),
                                ),
                              ],
                            ),
                          );
                        } else {
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
                        }
                      }),
                    ),
                  ),
                  DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        TabBar(
                          dividerColor: Colors.transparent,
                          indicatorSize: TabBarIndicatorSize.tab,
                          onTap: (index) {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          tabs: [
                            Tab(
                              icon: selectedIndex == 0
                                  ? const Icon(Icons.grid_view_rounded)
                                  : const Icon(Icons.grid_view_outlined),
                            ),
                            Tab(
                              icon: selectedIndex == 1
                                  ? const Icon(Icons.video_library)
                                  : const Icon(Icons.video_library_outlined),
                            ),
                            Tab(
                              icon: selectedIndex == 2
                                  ? const Icon(Icons.person_pin_rounded)
                                  : const Icon(Icons.person_pin_outlined),
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
