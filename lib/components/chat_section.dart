import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/chat_widgets/chat_collapsed_content.dart';
import 'package:instagram/components/chat_widgets/chat_expanded_content.dart';
import 'package:instagram/components/search_widgets/custom_search_bar.dart';
import 'package:instagram/components/profile_widgets/contas_button.dart';

enum Menu { selecionar, ferramentas }
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
                PopupMenuButton(
                      icon: const Icon(Icons.more_horiz, size: 20,),
                      color:
                          Theme.of(context).colorScheme.surface.withOpacity(0.8),
                      onSelected: (Menu item) {},
                      offset: const Offset(-120, kToolbarHeight),
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<Menu>>[
                        const PopupMenuItem<Menu>(
                          value: Menu.selecionar,
                          child: ListTile(
                            title: Row(
                              children: [
                                Text('Selecionar\nbate-papos'),
                                Spacer(),
                                Icon(Icons.list_rounded),
                              ],
                            ),
                          ),
                        ),
                        const PopupMenuItem<Menu>(
                          value: Menu.ferramentas,
                          child: ListTile(
                            title: Row(
                              children: [
                                Text('Ferramentas'),
                                Spacer(),
                                Icon(FontAwesomeIcons.toolbox),
                              ],
                            ),
                          ),
                        ),
                      ],
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
              Column(
                children: [
                  if (isExpanded) const SizedBox(height: 30),
                  Row(
                    children: [
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
                ],
              ),
              isExpanded
                  ? const ChatExpandedContent()
                  : const ChatCollapsedContent(),
            ],
          ),
        ),
      ),
    );
  }
}
