import 'package:flutter/material.dart';
import 'package:instagram/components/post_widgets/more_section/post_more_bottomsheet.dart';

class MoreButton extends StatelessWidget {
  final double height;
  final double widthButton;

  const MoreButton({super.key,
    required this.height,
    required this.widthButton,});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 525,
        color: Theme.of(context).colorScheme.onPrimaryContainer,
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 5, 0),
                  child: PostMoreBottomSheetButton(
                    icon: Icons.bookmark_border,
                    label: 'Salvar',
                    width: widthButton,
                    isTopRounded: true,
                    isBottomRounded: true,
                    backgroundColor: Theme.of(context).colorScheme.tertiary,
                    textColor: Theme.of(context).colorScheme.primary,
                    iconColor: Theme.of(context).colorScheme.primary,
                    isColumn: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 10, 0),
                  child: PostMoreBottomSheetButton(
                    icon: Icons.add_box_outlined,
                    label: 'Remixar',
                    width: widthButton,
                    isTopRounded: true,
                    isBottomRounded: true,
                    backgroundColor: Theme.of(context).colorScheme.tertiary,
                    textColor: Theme.of(context).colorScheme.primary,
                    iconColor: Theme.of(context).colorScheme.primary,
                    isColumn: true,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: PostMoreBottomSheetButton(
                icon: Icons.cut,
                label: 'Crie uma figurinha de recorte',
                width: (widthButton * 2) + 15,
                isTopRounded: true,
                isBottomRounded: true,
                isIconRotated: true,
                backgroundColor: Theme.of(context).colorScheme.tertiary,
                textColor: Theme.of(context).colorScheme.primary,
                iconColor: Theme.of(context).colorScheme.primary,
                isColumn: false,
              ),
            ),
            PostMoreBottomSheetButton(
              icon: Icons.star_border,
              label: 'Adicionar favoritos',
              width: (widthButton * 2) + 10,
              isTopRounded: true,
              backgroundColor: Theme.of(context).colorScheme.tertiary,
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
              icon: Icons.person_remove_outlined,
              label: 'Deixar de seguir',
              width: (widthButton * 2) + 10,
              isBottomRounded: true,
              isIconFlipped: true,
              backgroundColor: Theme.of(context).colorScheme.tertiary,
              textColor: Theme.of(context).colorScheme.primary,
              iconColor: Theme.of(context).colorScheme.primary,
              isColumn: false,
            ),
            const SizedBox(height: 10),
            PostMoreBottomSheetButton(
              icon: Icons.person_pin_rounded,
              label: 'Sobre essa conta',
              width: (widthButton * 2) + 10,
              isTopRounded: true,
              backgroundColor: Theme.of(context).colorScheme.tertiary,
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
              icon: Icons.qr_code_scanner_rounded,
              label: 'QR code',
              width: (widthButton * 2) + 10,
              backgroundColor: Theme.of(context).colorScheme.tertiary,
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
              icon: Icons.info_outline,
              label: 'Por que está vendo essa publicação',
              width: (widthButton * 2) + 10,
              backgroundColor: Theme.of(context).colorScheme.tertiary,
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
              icon: Icons.visibility_off_outlined,
              label: 'Ocultar',
              width: (widthButton * 2) + 10,
              backgroundColor: Theme.of(context).colorScheme.tertiary,
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
              icon: Icons.report_gmailerrorred,
              label: 'Denunciar',
              width: (widthButton * 2) + 10,
              isBottomRounded: true,
              backgroundColor: Theme.of(context).colorScheme.tertiary,
              textColor: Colors.red,
              iconColor: Colors.red,
              isColumn: false,
            ),
          ],
        ),
      ),
    );
  }
}
