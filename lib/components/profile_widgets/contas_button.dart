import 'package:flutter/material.dart';
import 'package:instagram/components/post_widgets/more_section/post_more_bottomsheet.dart';

class ContasButton extends StatelessWidget {
  final double height;
  final double widthButton;

  const ContasButton({
    super.key,
    required this.height,
    required this.widthButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      color: Theme.of(context).colorScheme.onSecondaryContainer,
      child: Column(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
          ),
          PostMoreBottomSheetButton(
            icon: Icons.person,
            label: 'Profile Name',
            width: (widthButton * 2) + 10,
            isTopRounded: true,
            backgroundColor: Color(0xFF344854),
            textColor: Theme.of(context).colorScheme.primary,
            iconColor: Theme.of(context).colorScheme.primary,
            isColumn: false,
          ),
          SizedBox(
            width: (widthButton * 2) + 10,
            child: Divider(
              height: 0.1,
              thickness: 0.1,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          PostMoreBottomSheetButton(
            icon: Icons.add,
            label: 'Adicionar conta do Instagram',
            width: (widthButton * 2) + 10,
            isBottomRounded: true,
            backgroundColor: Color(0xFF344854),
            textColor: Theme.of(context).colorScheme.primary,
            iconColor: Theme.of(context).colorScheme.primary,
            isColumn: false,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Seu perfil do Facebook',
                  style: TextStyle(
                    fontFamily: 'Instagram',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: PostMoreBottomSheetButton(
              icon: Icons.person,
              label: 'Nome',
              width: (widthButton * 2) + 15,
              isTopRounded: true,
              isBottomRounded: true,
              isIconRotated: false,
              backgroundColor: Color(0xFF344854),
              textColor: Theme.of(context).colorScheme.primary,
              iconColor: Theme.of(context).colorScheme.primary,
              isColumn: false,
            ),
          ),
          SizedBox(
            width: (widthButton * 2) + 15,
            child: OutlinedButton(
              style: ButtonStyle(
                side: WidgetStateProperty.all(
                  const BorderSide(color: Colors.white),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Ir para central de contas',
                style: TextStyle(fontFamily: 'Instagram', color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
