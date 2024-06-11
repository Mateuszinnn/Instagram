import 'package:flutter/material.dart';
import 'package:instagram/components/post_widgets/post_bottomsheet.dart';

class PostProfileHeader extends StatelessWidget {
  final double height;
  final double widthButton;

  const PostProfileHeader({
    super.key,
    required this.height,
    required this.widthButton,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 18, 12, 12),
          child: CircleAvatar(
            radius: 17.1,
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: CircleAvatar(
              radius: 17,
              backgroundColor: Theme.of(context).colorScheme.surface,
              child: Icon(
                Icons.person,
                size: 17,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ),
        const Text(
          'Profile Name',
          style: TextStyle(fontFamily: 'instagram bold'),
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(Icons.more_horiz),
          onPressed: () {
            showModalBottomSheet(
              showDragHandle: true,
              backgroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
              context: context,
              builder: (BuildContext context) {
                return SingleChildScrollView(
                  child: Container(
                    height: 550,
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 5, 0),
                                child: PostBottomSheetButton(
                                  icon: Icons.bookmark_border,
                                  label: 'Salvar',
                                  width: widthButton,
                                  isTopRounded: true,
                                  isBottomRounded: true,
                                  backgroundColor:
                                      Theme.of(context).colorScheme.tertiary,
                                  textColor:
                                      Theme.of(context).colorScheme.primary,
                                  iconColor:
                                      Theme.of(context).colorScheme.primary,
                                  isColumn: true,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(5, 10, 10, 0),
                                child: PostBottomSheetButton(
                                  icon: Icons.add_box_outlined,
                                  label: 'Remixar',
                                  width: widthButton,
                                  isTopRounded: true,
                                  isBottomRounded: true,
                                  backgroundColor:
                                      Theme.of(context).colorScheme.tertiary,
                                  textColor:
                                      Theme.of(context).colorScheme.primary,
                                  iconColor:
                                      Theme.of(context).colorScheme.primary,
                                  isColumn: true,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: PostBottomSheetButton(
                              icon: Icons.cut,
                              label: 'Crie uma figurinha de recorte',
                              width: (widthButton * 2) + 15,
                              isTopRounded: true,
                              isBottomRounded: true,
                              isIconRotated: true,
                              backgroundColor:
                                  Theme.of(context).colorScheme.tertiary,
                              textColor: Theme.of(context).colorScheme.primary,
                              iconColor: Theme.of(context).colorScheme.primary,
                              isColumn: false,
                            ),
                          ),
                          PostBottomSheetButton(
                            icon: Icons.star_border,
                            label: 'Adicionar favoritos',
                            width: (widthButton * 2) + 15,
                            isTopRounded: true,
                            backgroundColor:
                                Theme.of(context).colorScheme.tertiary,
                            textColor: Theme.of(context).colorScheme.primary,
                            iconColor: Theme.of(context).colorScheme.primary,
                            isColumn: false,
                          ),
                          SizedBox(
                            width: (widthButton * 2) + 15,
                            child: Divider(
                              height: 0.1,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          PostBottomSheetButton(
                            icon: Icons.person_remove_outlined,
                            label: 'Deixar de seguir',
                            width: (widthButton * 2) + 15,
                            isBottomRounded: true,
                            isIconFlipped: true,
                            backgroundColor:
                                Theme.of(context).colorScheme.tertiary,
                            textColor: Theme.of(context).colorScheme.primary,
                            iconColor: Theme.of(context).colorScheme.primary,
                            isColumn: false,
                          ),
                          const SizedBox(height: 10),
                          PostBottomSheetButton(
                            icon: Icons.person_pin_rounded,
                            label: 'Sobre essa conta',
                            width: (widthButton * 2) + 15,
                            isTopRounded: true,
                            backgroundColor:
                                Theme.of(context).colorScheme.tertiary,
                            textColor: Theme.of(context).colorScheme.primary,
                            iconColor: Theme.of(context).colorScheme.primary,
                            isColumn: false,
                          ),
                          SizedBox(
                            width: (widthButton * 2) + 15,
                            child: Divider(
                              height: 0.1,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          PostBottomSheetButton(
                            icon: Icons.qr_code_scanner_rounded,
                            label: 'QR code',
                            width: (widthButton * 2) + 15,
                            backgroundColor:
                                Theme.of(context).colorScheme.tertiary,
                            textColor: Theme.of(context).colorScheme.primary,
                            iconColor: Theme.of(context).colorScheme.primary,
                            isColumn: false,
                          ),
                          SizedBox(
                            width: (widthButton * 2) + 15,
                            child: Divider(
                              height: 0.1,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          PostBottomSheetButton(
                            icon: Icons.info_outline,
                            label: 'Por que você está vendo essa publicação',
                            width: (widthButton * 2) + 15,
                            backgroundColor:
                                Theme.of(context).colorScheme.tertiary,
                            textColor: Theme.of(context).colorScheme.primary,
                            iconColor: Theme.of(context).colorScheme.primary,
                            isColumn: false,
                          ),
                          SizedBox(
                            width: (widthButton * 2) + 15,
                            child: Divider(
                              height: 0.1,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          PostBottomSheetButton(
                            icon: Icons.visibility_off_outlined,
                            label: 'Ocultar',
                            width: (widthButton * 2) + 15,
                            backgroundColor:
                                Theme.of(context).colorScheme.tertiary,
                            textColor: Theme.of(context).colorScheme.primary,
                            iconColor: Theme.of(context).colorScheme.primary,
                            isColumn: false,
                          ),
                          SizedBox(
                            width: (widthButton * 2) + 15,
                            child: Divider(
                              height: 0.1,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          PostBottomSheetButton(
                            icon: Icons.report_gmailerrorred,
                            label: 'Denunciar',
                            width: (widthButton * 2) + 15,
                            isBottomRounded: true,
                            backgroundColor:
                                Theme.of(context).colorScheme.tertiary,
                            textColor: Colors.red,
                            iconColor: Colors.red,
                            isColumn: false,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
