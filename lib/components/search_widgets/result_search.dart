import 'package:flutter/material.dart';
import 'package:instagram/components/search_widgets/search_recent.dart';
import 'package:instagram/components/search_widgets/search_section.dart';

class ResultSearch extends StatefulWidget {
  final String title;
  final String textButton;
  final bool closeIcon;
  final int numberOfResults;
  final IconData icon;
  final bool hasTexts;

  const ResultSearch(
      {super.key,
      required this.textButton,
      required this.title,
      required this.closeIcon,
      required this.numberOfResults,
      required this.icon,
      required this.hasTexts});

  @override
  State<ResultSearch> createState() => _ResultSearchState();
}

class _ResultSearchState extends State<ResultSearch> {
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
            widget.hasTexts
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
                    child: Row(
                      children: [
                        Text(
                          widget.title,
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
                              widget.textButton,
                              style: const TextStyle(
                                  fontFamily: 'Instagram',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 15),
                            )),
                      ],
                    ),
                  )
                : Container(),
            SearchSection(
              followButton: false,
              closeIcon: widget.closeIcon,
              numberOfResults: widget.numberOfResults,
              icon: widget.icon,
            ),
          ],
        ),
      ),
    );
  }
}
