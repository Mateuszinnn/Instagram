import 'package:flutter/material.dart';
import 'package:instagram/components/profile_widget.dart';
import 'package:instagram/components/search_widgets/result_search.dart';
import 'package:instagram/components/search_widgets/search_recent.dart';

class ChatExpandedContent extends StatelessWidget {
  const ChatExpandedContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recentes',
                      style: TextStyle(
                          fontFamily: 'Instagram',
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SearchRecent()),
                          );
                        },
                        child: const Text(
                          'Editar',
                          style: TextStyle(
                              fontFamily: 'Instagram',
                              color: Colors.blue,
                              fontSize: 17),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 201,
                child: Column(
                  children: List.generate(
                    2,
                    (index) => Row(
                      children: List.generate(
                        4,
                        (index) => const Expanded(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  child: ProfileWidget(
                                    profileName: 'User Name',
                                    paddingLeft: 0,
                                    paddingTop: 0,
                                    paddingRight: 0,
                                    paddingBottom: 10,
                                    size: 25,
                                    isColumn: true,
                                    hasDescription: false,
                                    description: '',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const ResultSearch(
          textButton: '',
          title: 'Mais Sugestões',
          closeIcon: true,
          numberOfResults: 15,
          icon: Icons.close,
          hasTexts: true,
        ),
        const ResultSearch(
          textButton: 'Ver tudo',
          title: 'Canais Sugeridos ⓘ',
          closeIcon: true,
          numberOfResults: 4,
          icon: Icons.close,
          hasTexts: true,
        ),
      ],
    );
  }
}
