import 'package:flutter/material.dart';

class BottomTabController extends StatefulWidget {
  const BottomTabController({super.key});

  @override
  State<BottomTabController> createState() => _BottomTabControllerState();
}

class _BottomTabControllerState extends State<BottomTabController> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double widthTela = MediaQuery.of(context).size.width / 3.059;
    double imageHeight = widthTela;

    return DefaultTabController(
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
                              'assets/images/mineira.jpg', widthTela),
                          buildSquareImage(
                              'assets/images/images.jpeg', widthTela),
                          buildSquareImage(
                              'assets/images/pasta.jpeg', widthTela),
                        ],
                      ),
                      Row(
                        children: [
                          buildSquareImage(
                              'assets/images/sushi.jpeg', widthTela),
                          buildSquareImage(
                              'assets/images/tacos.jpg', widthTela),
                          buildSquareImage(
                              'assets/images/pizza.jpeg', widthTela),
                        ],
                      ),
                      Row(
                        children: [
                          buildSquareImage(
                              'assets/images/cachorro-quente.jpg', widthTela),
                          buildSquareImage(
                              'assets/images/tomato.jpg', widthTela),
                          buildSquareImage(
                              'assets/images/images.jpeg', widthTela),
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
                              'assets/images/mineira.jpg', widthTela),
                          buildRectangularImage(
                              'assets/images/images.jpeg', widthTela),
                          buildRectangularImage(
                              'assets/images/pasta.jpeg', widthTela),
                        ],
                      ),
                      Row(
                        children: [
                          buildRectangularImage(
                              'assets/images/sushi.jpeg', widthTela),
                          buildRectangularImage(
                              'assets/images/tacos.jpg', widthTela),
                          buildRectangularImage(
                              'assets/images/pizza.jpeg', widthTela),
                        ],
                      ),
                      Row(
                        children: [
                          buildRectangularImage(
                              'assets/images/cachorro-quente.jpg', widthTela),
                          buildRectangularImage(
                              'assets/images/tomato.jpg', widthTela),
                          buildRectangularImage(
                              'assets/images/images.jpeg', widthTela),
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
                              'assets/images/mineira.jpg', widthTela),
                          buildSquareImage(
                              'assets/images/images.jpeg', widthTela),
                          buildSquareImage(
                              'assets/images/pasta.jpeg', widthTela),
                        ],
                      ),
                      Row(
                        children: [
                          buildSquareImage(
                              'assets/images/sushi.jpeg', widthTela),
                          buildSquareImage(
                              'assets/images/tacos.jpg', widthTela),
                          buildSquareImage(
                              'assets/images/pizza.jpeg', widthTela),
                        ],
                      ),
                      Row(
                        children: [
                          buildSquareImage(
                              'assets/images/cachorro-quente.jpg', widthTela),
                          buildSquareImage(
                              'assets/images/tomato.jpg', widthTela),
                          buildSquareImage(
                              'assets/images/images.jpeg', widthTela),
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