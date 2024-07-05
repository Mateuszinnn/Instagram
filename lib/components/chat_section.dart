import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/profile_widget.dart';
import 'package:instagram/components/search_widgets/custom_search_bar.dart';
import 'package:instagram/components/profile_widgets/contas_button.dart';
import 'package:instagram/components/search_widgets/result_search.dart';
import 'package:instagram/components/search_widgets/search_recent.dart';
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
      appBar: isExpanded
          ? null
          : AppBar(
              backgroundColor: Theme.of(context).colorScheme.surface,
              elevation: 0,
              title: Row(
                children: [
                  Expanded(
                    child: Text(
                      'User Name',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontFamily: 'Instagram',
                        fontSize: 17,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
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
                              backgroundColor:
                                  const Color.fromARGB(255, 37, 54, 65),
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
                    size: 25,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.arrowTrendUp,
                    size: 20,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.squarePen,
                    size: 20,
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
                  isExpanded ? const SizedBox(height: 130) : Container(),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CustomSearchBar(
                      isExpanded: isExpanded,
                      onExpand: _expandSearchBar,
                      onCollapse: _collapseSearchBar,
                    ),
                  ),
                  if (!isExpanded)
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Filtrar',
                        style: TextStyle(
                          fontFamily: 'Instagram',
                          color: Colors.blue,
                        ),
                      ),
                    ),
                ],
              ),
              isExpanded
                  ? Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Recentes',
                                      style: TextStyle(
                                          fontFamily: 'Instagram',
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const SearchRecent()),
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 10, 0, 10),
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
                        ),
                        const ResultSearch(
                          textButton: 'Ver tudo',
                          title: 'Canais Sugeridos ⓘ',
                          closeIcon: true,
                          numberOfResults: 4,
                        ),
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
