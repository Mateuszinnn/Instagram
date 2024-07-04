import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/search_widgets/custom_search_bar.dart';
import 'package:instagram/components/profile_widgets/contas_button.dart';
import 'package:instagram/components/search_widgets/result_search.dart';
import 'package:instagram/components/storieswidget.dart';

class ChatSection extends StatefulWidget {
  const ChatSection({super.key});

  @override
  State<ChatSection> createState() => _ChatSectionState();
}

class _ChatSectionState extends State<ChatSection> {
  bool isExpanded = false;
  void _expandSearchBar() {
    setState(() {
      isExpanded = true;
    });
  }

  void _collapseSearchBar() {
    setState(() {
      isExpanded = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    double widhtTotal = MediaQuery.of(context).size.width;
    double widthButton = (widhtTotal / 2) - 15;
    double height = widthButton <= 170 ? 60 : 30;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        title: Row(
          children: [
            Text(
              'Profile name',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontFamily: 'Instagram',
                  fontSize: widhtTotal <= 390 ? 17 : null),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(3.5, 13.5, 5, 0),
                  child: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                SizedBox(
                  width: 30,
                  child: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        showDragHandle: true,
                        backgroundColor: const Color.fromARGB(255, 37, 54, 65),
                        context: context,
                        builder: (BuildContext context) {
                          return ContasButton(
                            height: height,
                            widthButton: widthButton,
                          );
                        },
                      );
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              size: 30,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.arrowTrendUp,
              size: 25,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.squarePen,
              size: 25,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).colorScheme.surface,
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: CustomSearchBar(
                        isExpanded: isExpanded,
                        onExpand: _expandSearchBar,
                        onCollapse: _collapseSearchBar),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Filtrar',
                        style: TextStyle(
                            fontFamily: 'Instagram', color: Colors.blue),
                      ))
                ],
              ),
              isExpanded
                  ? const Column(
                      children: [
                        ResultSearch(
                            textButton: 'Editar', title: 'Recentes'),
                        ResultSearch(
                            textButton: 'Ver tudo', title: 'Canais Sugeridos ⓘ')
                      ],
                    )
                  : const Storieswidget(
                      index: 10,
                      profileName: 'Profile Name',
                      textStyle: TextStyle(fontFamily: 'instagram'))
            ],
          ),
        ),
      ),
    );
  }
}
