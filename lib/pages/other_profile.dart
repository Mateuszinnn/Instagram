import 'package:flutter/material.dart';
import 'package:instagram/components/profile_widgets/bottom_tab_controller.dart';
import 'package:instagram/components/profile_widgets/interaction_buttons.dart';
import 'package:instagram/components/profile_widgets/profile_description.dart';
import 'package:instagram/components/stories_widget.dart';
import 'package:instagram/components/profile_widgets/info_profile.dart';
import 'package:instagram/components/stories_widgets/stories_page.dart';

class OtherProfile extends StatefulWidget {
  const OtherProfile({super.key});

  @override
  State<OtherProfile> createState() => _ProfileState();
}

class _ProfileState extends State<OtherProfile> {
  @override
  Widget build(BuildContext context) {
    double widhtTotal = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
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
                ],
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_none_rounded,
                    size: 30,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    size: 30,
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Storieswidget(
                          index: 1,
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
                  const InteractionButtons(isMyprofile: false),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(6, (index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const StoriesPage(),
                                    ),
                                  );
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
                                      color:
                                          Theme.of(context).colorScheme.primary,
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
    );
  }
}
