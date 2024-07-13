import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PublicationPage extends StatefulWidget {
  const PublicationPage({super.key});

  @override
  State<PublicationPage> createState() => _PublicationPageState();
}

class _PublicationPageState extends State<PublicationPage> {
  bool imageSize = true;

  @override
  Widget build(BuildContext context) {
    double widthTela = MediaQuery.of(context).size.width / 3.059;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/',
              (Route<dynamic> route) => false,
            );
          },
          icon: const Icon(Icons.close_rounded),
        ),
        centerTitle: true,
        title: const Text(
          'Nova Publicação',
          style: TextStyle(
            fontFamily: 'Instagram',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Avançar',
              style: TextStyle(
                fontFamily: 'Instagram',
                color: Colors.blue,
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.black,
                    height: 350,
                    child: Image.asset(
                      'assets/images/pizza.jpeg',
                      fit: imageSize == false ? BoxFit.cover : BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          imageSize = !imageSize;
                        });
                      },
                      icon: const Icon(
                        FontAwesomeIcons.upRightAndDownLeftFromCenter,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.black,
                height: 40,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Text(
                        'Recentes',
                        style: TextStyle(
                          fontFamily: 'Instagram',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.white,
                      ),
                      Spacer(),
                      Icon(
                        FontAwesomeIcons.layerGroup,
                        size: 18,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
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
              ),
            ],
          ),
          Positioned(
            bottom: 40,
            left: 80,
            right: 0,
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 63, 63, 63),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'PUBLICAÇÕES',
                        style: TextStyle(
                          fontFamily: 'Instagram',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'STORY',
                        style: TextStyle(
                          fontFamily: 'Instagram',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'REELS',
                        style: TextStyle(
                          fontFamily: 'Instagram',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'AO VIVO',
                        style: TextStyle(
                          fontFamily: 'Instagram',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
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
