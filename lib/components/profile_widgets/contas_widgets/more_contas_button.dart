import 'package:flutter/material.dart';
import 'package:instagram/components/post_widgets/more_section/post_more_bottomsheet.dart';

class MoreContasButton extends StatelessWidget {
  final double widthButton;

  const MoreContasButton({super.key, required this.widthButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color.fromARGB(255, 37, 54, 65),
      child: Column(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
            child: Align(alignment: Alignment.centerLeft, child: Icon(Icons.close_rounded)),
          ),
          PostMoreBottomSheetButton(
            icon: Icons.circle_notifications_outlined,
            label: '  Gerenciar ponto de notificação',
            width: (widthButton * 2) + 10,
            isTopRounded: true,
            isBottomRounded: true,
            backgroundColor: const Color(0xFF344854),
            textColor: Theme.of(context).colorScheme.primary,
            iconColor: Theme.of(context).colorScheme.primary,
            isColumn: false,
          ),
        ],
      ),
    );
  }
}
