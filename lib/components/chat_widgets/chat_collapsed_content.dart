import 'package:flutter/material.dart';
import 'package:instagram/components/custom_textbutton.dart';
import 'package:instagram/components/search_widgets/result_search.dart';
import 'package:instagram/components/storieswidget.dart';

class ChatCollapsedContent extends StatelessWidget {
  const ChatCollapsedContent({super.key});

  @override
  Widget build(BuildContext context) {
    double widhtTotal = MediaQuery.of(context).size.width;
    double widthButton = (widhtTotal / 2) - 15;

    return Column(
      children: [
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              children: List.generate(
                10,
                (index) => Stack(
                  children: [
                    const Storieswidget(
                      index: 1,
                      profileName: 'Profile Name',
                      textStyle: TextStyle(fontFamily: 'instagram'),
                    ),
                    Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text(
                          'Nota...',
                          style: TextStyle(
                              fontFamily: 'Instagram', color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomTextbutton(
                text: 'Principal',
                width: widthButton,
                onPressed: () {},
              ),
              const SizedBox(width: 5),
              CustomTextbutton(
                text: 'Geral',
                width: widthButton - 80,
                onPressed: () {},
              ),
              const SizedBox(width: 5),
              CustomTextbutton(
                text: 'Solicitações',
                width: widthButton,
                onPressed: () {},
              ),
            ],
          ),
        ),
        const ResultSearch(
          textButton: '',
          title: '',
          closeIcon: false,
          numberOfResults: 20,
          icon: Icons.camera_alt_outlined,
          hasTexts: false,
        )
      ],
    );
  }
}
