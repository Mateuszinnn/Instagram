import 'package:flutter/material.dart';

class ImageGrid extends StatelessWidget {
  final int index;
  const ImageGrid({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    double widthTela = MediaQuery.of(context).size.width * 0.3;
    return Padding(
      padding: const EdgeInsets.all(0),
      child: index % 2 == 0
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        buildSquareImage('assets/images/mineira.jpg', widthTela),
                        buildSquareImage('assets/images/images.jpeg', widthTela),
                      ],
                    ),
                    Row(
                      children: [
                        buildSquareImage('assets/images/sushi.jpeg', widthTela),
                        buildSquareImage('assets/images/tacos.jpg', widthTela),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: buildRectangularImage('assets/images/pasta.jpeg', widthTela),
                ),
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: buildRectangularImage(
                      'assets/images/cachorro-quente.jpg', widthTela),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        buildSquareImage('assets/images/pizza.jpeg', widthTela),
                        buildSquareImage('assets/images/tomato.jpg', widthTela),
                      ],
                    ),
                    Row(
                      children: [
                        buildSquareImage('assets/images/sushi.jpeg', widthTela),
                        buildSquareImage('assets/images/tacos.jpg', widthTela),
                      ],
                    ),
                  ],
                ),
              ],
            ),
    );
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
      width: 1.3*size,
      height: 2.015*size,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
