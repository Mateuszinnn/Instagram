import 'package:flutter/material.dart';
import 'package:instagram/components/search_widgets/search_recent.dart';
import 'package:instagram/components/search_widgets/search_section.dart';

class ResultSearch extends StatelessWidget {
  final String title;
  final String textButton;
  const ResultSearch(
      {super.key, required this.textButton, required this.title});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            const Divider(
              height: 0.1,
              thickness: 0.1,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
              child: Row(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontFamily: 'Instagram',
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchRecent()),
                        );
                      },
                      child: Text(
                        textButton,
                        style: const TextStyle(
                            fontFamily: 'Instagram',
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 15),
                      )),
                ],
              ),
            ),
            const SearchSection(
              followButton: false,
            ),
          ],
        ),
      ),
    );
  }
}
