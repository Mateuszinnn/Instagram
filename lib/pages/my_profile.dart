import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/profile_widgets/bottom_tab_controller.dart';
import 'package:instagram/components/profile_widgets/contas_button.dart';
import 'package:instagram/components/profile_widgets/criar_button.dart';
import 'package:instagram/components/profile_widgets/interaction_buttons.dart';
import 'package:instagram/components/profile_widgets/profile_description.dart';
import 'package:instagram/components/stories_widget.dart';
import 'package:instagram/components/profile_widgets/info_profile.dart';
import 'package:instagram/components/stories_widgets/stories_page.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _ProfileState();
}

class _ProfileState extends State<MyProfile> {
  Future<void> _refresh() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double widhtTotal = MediaQuery.of(context).size.width;
    double widthButton = (widhtTotal / 2) - 15;
    double height = widthButton <= 170 ? 60 : 30;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                backgroundColor: Theme.of(context).colorScheme.surface,
                elevation: 0,
                shadowColor: Colors.black,
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
                                backgroundColor: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryContainer,
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
                      FontAwesomeIcons.threads,
                      size: 27,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        showDragHandle: true,
                        backgroundColor:
                            Theme.of(context).colorScheme.onPrimaryContainer,
                        context: context,
                        builder: (BuildContext context) {
                          return CriarButton(
                            height: height,
                            widthButton: widthButton,
                          );
                        },
                      );
                    },
                    icon: Icon(
                      Icons.add_box_outlined,
                      size: 30,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      size: 35,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  )
                ],
              ),
              Container(
                color: Theme.of(context).colorScheme.surface,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Storieswidget(
                            index: 0,
                            profileName: 'Profile Name',
                            textStyle: TextStyle(
                                fontFamily: 'instagram',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Spacer(),
                        Info(
                          text: 'X',
                          text2: 'publicações',
                          fontsize: 20,
                          textColor: Theme.of(context).colorScheme.primary,
                        ),
                        const Spacer(),
                        Info(
                          text: 'X',
                          text2: 'seguidores',
                          fontsize: 20,
                          textColor: Theme.of(context).colorScheme.primary,
                        ),
                        const Spacer(),
                        Info(
                          text: 'X',
                          text2: 'seguindo',
                          fontsize: 20,
                          textColor: Theme.of(context).colorScheme.primary,
                        ),
                        const Spacer(),
                      ],
                    ),
                    const ProfileDescription(),
                    const InteractionButtons(isMyprofile: true,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(6, (index) {
                          final itemNumber = index + 1;
                          if (itemNumber == 6) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundColor:
                                        Theme.of(context).colorScheme.secondary,
                                    child: CircleAvatar(
                                      radius: 32,
                                      backgroundColor:
                                          Theme.of(context).colorScheme.surface,
                                      child: Icon(
                                        Icons.add,
                                        size: 32,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'Novo',
                                    style: TextStyle(fontFamily: 'instagram'),
                                  ),
                                ],
                              ),
                            );
                          } else {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const StoriesPage(),),);
                                    },
                                    child: CircleAvatar(
                                      radius: 35,
                                      backgroundColor:
                                          Theme.of(context).colorScheme.secondary,
                                      child: CircleAvatar(
                                        radius: 32,
                                        backgroundColor:
                                            Theme.of(context).colorScheme.surface,
                                        child: Icon(
                                          Icons.person,
                                          size: 32,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'Destaque',
                                    style: TextStyle(fontFamily: 'instagram'),
                                  ),
                                ],
                              ),
                            );
                          }
                        }),
                      ),
                    ),
                    const BottomTabController(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
