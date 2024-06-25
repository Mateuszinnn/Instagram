import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/button_reels.dart';

class SendBottomButtons extends StatelessWidget {
  const SendBottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: Theme.of(context).colorScheme.onPrimaryContainer,
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 10,
              ),
              ButtonReels(
                onPressed: () {},
                text: 'Copiar link',
                icon: Icons.link_rounded,
                isFilled: true,
                textColor: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                width: 10,
              ),
              ButtonReels(
                onPressed: () {},
                text: 'Compartilhar \n no ...',
                icon: Icons.ios_share_outlined,
                isFilled: true,
                textColor: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                width: 10,
              ),
              ButtonReels(
                onPressed: () {},
                text: 'Adicionar \n ao story',
                icon: Icons.add_circle_outline_rounded,
                isFilled: true,
                textColor: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                width: 10,
              ),
              ButtonReels(
                onPressed: () {},
                text: 'Whatsapp',
                icon: FontAwesomeIcons.whatsapp,
                isFilled: true,
                textColor: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                width: 10,
              ),
              ButtonReels(
                onPressed: () {},
                text: 'Facebook',
                icon: Icons.facebook,
                isFilled: true,
                textColor: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                width: 10,
              ),
              ButtonReels(
                onPressed: () {},
                text: 'X',
                icon: FontAwesomeIcons.xTwitter,
                isFilled: true,
                textColor: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                width: 10,
              ),
              ButtonReels(
                onPressed: () {},
                text: 'Threads',
                icon: FontAwesomeIcons.threads,
                isFilled: true,
                textColor: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                width: 10,
              ),
              ButtonReels(
                onPressed: () {},
                text: 'Mensagens',
                icon: FontAwesomeIcons.comment,
                isFilled: true,
                textColor: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                width: 10,
              ),
              ButtonReels(
                onPressed: () {},
                text: 'Messenger',
                icon: FontAwesomeIcons.facebookMessenger,
                isFilled: true,
                textColor: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                width: 10,
              ),
              ButtonReels(
                onPressed: () {},
                text: 'Baixar',
                icon: Icons.download_rounded,
                isFilled: true,
                textColor: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                width: 10,
              ),
              ButtonReels(
                onPressed: () {},
                text: 'Snapchat',
                icon: Icons.snapchat,
                isFilled: true,
                textColor: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}