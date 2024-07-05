import 'package:flutter/material.dart';
import 'package:instagram/components/post_widgets/more_section/post_more_bottomsheet.dart';
import 'package:instagram/components/profile_widget.dart';
import 'package:instagram/components/profile_widgets/contas_widgets/acounts.dart';
import 'package:instagram/components/profile_widgets/contas_widgets/add_acount.dart';
import 'package:instagram/components/profile_widgets/contas_widgets/more_contas_button.dart';

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
      height: 280,
      color: Theme.of(context).colorScheme.onSecondaryContainer,
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            color: Theme.of(context).colorScheme.onSecondaryContainer,
          ),
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: PostMoreBottomSheetButton(
                  icon: Icons.person,
                  label: '  Profile Name',
                  width: (widthButton * 2) + 10,
                  isTopRounded: true,
                  backgroundColor: Theme.of(context).colorScheme.onPrimary,
                  textColor: Theme.of(context).colorScheme.primary,
                  iconColor: Theme.of(context).colorScheme.primary,
                  isColumn: false,
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(13.5, 8, 8, 8),
                child: ProfileWidget(
                  profileName: '',
                  paddingLeft: 5,
                  paddingTop: 0,
                  paddingRight: 10,
                  paddingBottom: 0,
                  size: 17,
                  isColumn: false,
                  hasDescription: false,
                  description: '',
                ),
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(8, 10, 18, 8),
                  child: Icon(
                    Icons.verified_rounded,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: (widthButton * 2) + 10,
            child: Divider(
              height: 0.1,
              thickness: 0.1,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Stack(
            children: [
              PostMoreBottomSheetButton(
                icon: Icons.add,
                label: '  Adicionar conta do Instagram',
                width: (widthButton * 2) + 10,
                isBottomRounded: true,
                backgroundColor: Theme.of(context).colorScheme.onPrimary,
                textColor: Theme.of(context).colorScheme.primary,
                iconColor: Theme.of(context).colorScheme.primary,
                isColumn: false,
              ),
              ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      showDragHandle: true,
                      backgroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
                      context: context,
                      builder: (BuildContext context) {
                        return AddAcount(
                          widthButton: widthButton,
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child: SizedBox(
                    width: (widthButton * 2) - 40,
                  )),
              const Padding(
                  padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                  child: Icon(
                    Icons.circle,
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                    size: 40,
                  ))
            ],
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
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(3.5, 5, 8, 8),
                    child: ProfileWidget(
                      profileName: 'Nome',
                      paddingLeft: 5,
                      paddingTop: 0,
                      paddingRight: 10,
                      paddingBottom: 0,
                      size: 17,
                      isColumn: false,
                      hasDescription: true,
                      description: '• x bate-papos e mais x',
                    ),
                  ),
                ),
                PostMoreBottomSheetButton(
                  icon: Icons.abc,
                  label: '',
                  width: (widthButton * 2) + 15,
                  isTopRounded: true,
                  isBottomRounded: true,
                  backgroundColor: Colors.transparent,
                  textColor: Theme.of(context).colorScheme.primary,
                  iconColor: Colors.transparent,
                  isColumn: false,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: IconButton(
                      color: const Color(0xFFA8A8A8),
                      onPressed: () {
                        showModalBottomSheet(
                          showDragHandle: true,
                          backgroundColor:
                              Theme.of(context).colorScheme.onSecondaryContainer,
                          context: context,
                          builder: (BuildContext context) {
                            return MoreContasButton(
                              widthButton: widthButton,
                            );
                          },
                        );
                      },
                      icon: const Icon(Icons.more_horiz),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: (widthButton * 2) + 15,
            child: OutlinedButton(
              style: ButtonStyle(
                side: WidgetStateProperty.all(
                  BorderSide(color: Theme.of(context).colorScheme.primary,),
                ),
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  isDismissible: true,
                  builder: (BuildContext context) {
                    return Acounts(widthButton: widthButton,);
                  },
                );
              },
              child: Text(
                'Ir para central de contas',
                style: TextStyle(fontFamily: 'Instagram', color: Theme.of(context).colorScheme.primary,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
