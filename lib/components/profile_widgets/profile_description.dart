import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileDescription extends StatelessWidget {
  const ProfileDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
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
                        FontAwesomeIcons.threads,
                        size: 15,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        '  Profile name',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
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
    );
  }
}
