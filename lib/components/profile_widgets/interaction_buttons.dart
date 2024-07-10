import 'package:flutter/material.dart';
import 'package:instagram/components/custom_textbutton.dart';

class InteractionButtons extends StatelessWidget {
  final bool isMyprofile;
  const InteractionButtons({super.key, required this.isMyprofile});

  @override
  Widget build(BuildContext context) {
    double widhtTotal = MediaQuery.of(context).size.width;
    double widthButton = (widhtTotal / 2) - 15;
    double height = widthButton <= 170 ? 60 : 30;

    return Column(
      children: [
        if(isMyprofile == true)
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
              child: CustomTextbutton(
                text: 'Painel profissional',
                width: widhtTotal,
                onPressed: () {},
                height: height + 10,
                description: 'X contas alcançadas nos ultimos 30 dias',
                isColumn: true,
              ),
            ),
          ),
        ),
        if(isMyprofile == true)
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 5, 10),
              child: CustomTextbutton(
                text: 'Editar perfil',
                width: widthButton == 185 ? 181 : widthButton,
                onPressed: () {},
                height: height,
                description: '',
                isColumn: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 10, 10),
              child: CustomTextbutton(
                text: 'Compartilhar perfil',
                width: widthButton == 185 ? 181 : widthButton,
                onPressed: () {},
                height: height,
                description: '',
                isColumn: false,
              ),
            ),
          ],
        ),
        if (isMyprofile == false)
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
                child: CustomTextbutton(
                  text: 'Seguindo',
                  width: widthButton == 185 ? 181 : widthButton,
                  onPressed: () {},
                  height: height,
                  description: '',
                  isColumn: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 10, 10),
                child: CustomTextbutton(
                  text: 'Mensagem',
                  width: widthButton == 185 ? 181 : widthButton,
                  onPressed: () {},
                  height: height,
                  description: '',
                  isColumn: false,
                ),
              ),
            ],
          ),
      ],
    );
  }
}
