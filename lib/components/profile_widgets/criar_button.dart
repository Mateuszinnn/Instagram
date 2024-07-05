import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/post_widgets/more_section/post_more_bottomsheet.dart';

class CriarButton extends StatelessWidget {
  final double height;
  final double widthButton;

  const CriarButton({
    super.key,
    required this.height,
    required this.widthButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 525,
      color: Theme.of(context).colorScheme.onPrimaryContainer,
      child: Column(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
          ),
          const Center(
            child: Text(
              'Criar',
              style: TextStyle(
                  fontFamily: 'Instagram',
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Divider(
              height: 0.1,
              thickness: 0.1,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          PostMoreBottomSheetButton(
            icon: Icons.video_library_outlined,
            label: 'Reel',
            width: MediaQuery.of(context).size.width,
            backgroundColor:
                Theme.of(context).colorScheme.onPrimaryContainer,
            textColor: Theme.of(context).colorScheme.primary,
            iconColor: Theme.of(context).colorScheme.primary,
            isColumn: false,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Divider(
              height: 0.1,
              thickness: 0.1,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          PostMoreBottomSheetButton(
            icon: Icons.grid_on,
            label: 'Publicação',
            width: MediaQuery.of(context).size.width,
            backgroundColor:
                Theme.of(context).colorScheme.onPrimaryContainer,
            textColor: Theme.of(context).colorScheme.primary,
            iconColor: Theme.of(context).colorScheme.primary,
            isColumn: false,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Divider(
              height: 0.1,
              thickness: 0.1,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          PostMoreBottomSheetButton(
            icon: Icons.add_box_outlined,
            label: 'Story',
            width: MediaQuery.of(context).size.width,
            backgroundColor:
                Theme.of(context).colorScheme.onPrimaryContainer,
            textColor: Theme.of(context).colorScheme.primary,
            iconColor: Theme.of(context).colorScheme.primary,
            isColumn: false,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Divider(
              height: 0.1,
              thickness: 0.1,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          PostMoreBottomSheetButton(
            icon: Icons.favorite_border_rounded,
            label: 'Destaques dos stories',
            width: MediaQuery.of(context).size.width,
            backgroundColor:
                Theme.of(context).colorScheme.onPrimaryContainer,
            textColor: Theme.of(context).colorScheme.primary,
            iconColor: Theme.of(context).colorScheme.primary,
            isColumn: false,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Divider(
              height: 0.1,
              thickness: 0.1,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          PostMoreBottomSheetButton(
            icon: Icons.wifi_tethering_outlined,
            label: 'Transmissão ao vivo',
            width: MediaQuery.of(context).size.width,
            backgroundColor:
                Theme.of(context).colorScheme.onPrimaryContainer,
            textColor: Theme.of(context).colorScheme.primary,
            iconColor: Theme.of(context).colorScheme.primary,
            isColumn: false,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Divider(
              height: 0.1,
              thickness: 0.1,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          PostMoreBottomSheetButton(
            icon: FontAwesomeIcons.wandMagic,
            label: 'Feito para você',
            width: MediaQuery.of(context).size.width,
            backgroundColor:
                Theme.of(context).colorScheme.onPrimaryContainer,
            textColor: Theme.of(context).colorScheme.primary,
            iconColor: Theme.of(context).colorScheme.primary,
            isColumn: false,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Divider(
              height: 0.1,
              thickness: 0.1,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
