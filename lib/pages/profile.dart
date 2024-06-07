import 'package:flutter/material.dart';
import 'package:instagram/components/button_reels.dart';
import 'package:instagram/components/storieswidget.dart';
import 'package:instagram/components/info.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Profile name',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontFamily: 'Instagram'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: ButtonReels(
                  onPressed: () {},
                  text: '',
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Theme.of(context).colorScheme.primary,
                  )),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: ButtonReels(
                  onPressed: () {},
                  text: '',
                  icon: Icon(
                    Icons.adobe,
                    size: 30,
                    color: Theme.of(context).colorScheme.primary,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: ButtonReels(
                  onPressed: () {},
                  text: '',
                  icon: Icon(
                    Icons.add_box_outlined,
                    size: 30,
                    color: Theme.of(context).colorScheme.primary,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: ButtonReels(
                  onPressed: () {},
                  text: '',
                  icon: Icon(
                    Icons.menu,
                    size: 35,
                    color: Theme.of(context).colorScheme.primary,
                  )),
            ),
          ],
        ),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Storieswidget(index: 0, profileName: '')),
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
            Container(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Profile name',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontFamily: 'Instagram',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: SizedBox(
                      height: 30,
                      child: IntrinsicWidth(
                        child: FilledButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                                Theme.of(context).colorScheme.secondary),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.adobe,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              Text(
                                'Profile name',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontFamily: 'Instagram'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Descrição',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontFamily: 'Instagram'),
                  ),
                  Text(
                    'Ver Tradução',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontFamily: 'Instagram',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                        Theme.of(context).colorScheme.secondary),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Painel profissional', style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontFamily: 'Instagram',
                        ),),
                        Text('X contas alcançadas nos últimos 30 dias', style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontFamily: 'Instagram',
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 5, 10),
                    child: SizedBox(
                      height: 30,
                      child: IntrinsicWidth(
                        child: FilledButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                                Theme.of(context).colorScheme.secondary),
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                          child: Text(
                            'Editar perfil',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontFamily: 'Instagram'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 10, 10),
                    child: SizedBox(
                      height: 30,
                      child: IntrinsicWidth(
                        child: FilledButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                                Theme.of(context).colorScheme.secondary),
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                          child: Text(
                            ' Compartilhar perfil',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontFamily: 'Instagram'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
                                color: Theme.of(context).colorScheme.primary,
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
                          CircleAvatar(
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
                                color: Theme.of(context).colorScheme.primary,
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
          ],
        ),
      ),
    );
  }
}
