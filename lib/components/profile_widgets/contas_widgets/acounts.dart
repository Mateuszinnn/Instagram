import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/profile_widgets/contas_widgets/acount_button.dart';

class Acounts extends StatefulWidget {
  final double widthButton;

  const Acounts({super.key, required this.widthButton});

  @override
  State<Acounts> createState() => _AcountsState();
}

class _AcountsState extends State<Acounts> {
  @override
  Widget build(BuildContext context) {
    double widthTotal = MediaQuery.of(context).size.width;
    double widthButtonBottomsheet = widthTotal - 25;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.pop(context),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {},
            child: DraggableScrollableSheet(
              initialChildSize: 1.0,
              minChildSize: 0.25,
              maxChildSize: 1.0,
              expand: true,
              builder: (context, scrollController) {
                return Stack(
                  children: [
                    Container(
                      color: Theme.of(context).colorScheme.secondary,
                      child: SingleChildScrollView(
                        controller: scrollController,
                        padding: const EdgeInsets.only(top: 80),
                        child: Column(
                          children: [
                            const Text(
                              'Central de contas',
                              style: TextStyle(
                                fontFamily: 'Instagram',
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                style: TextStyle(
                                  fontFamily: 'Instagram',
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 17,
                                ),
                                children: const [
                                  TextSpan(
                                    text:
                                        'Gerencie suas experiências conectadas e configurações de contas nas tecnologias Meta, como Facebook, Instagram e Meta Horizon. ',
                                  ),
                                  TextSpan(
                                    text: 'Saiba mais',
                                    style: TextStyle(
                                      color: Colors
                                          .blue, // Blue color for "Saiba mais"
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            AcountButton(
                              widhtButton: widthButtonBottomsheet,
                              icon: Icons.switch_account_rounded,
                              text: '  Perfis',
                              hasDescription: true,
                              description: '  Profile Name',
                              isTopRounded: true,
                              hasIcon: true,
                              color: Theme.of(context).colorScheme.primary,
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'Experiências conectadas',
                                  style: TextStyle(
                                      fontFamily: 'Instagram',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                            AcountButton(
                              widhtButton: widthButtonBottomsheet,
                              icon: Icons.switch_account_rounded,
                              text: '  Compartilhamento entre perfis',
                              hasDescription: false,
                              description: '',
                              isTopRounded: true,
                              hasIcon: true,
                              color: Theme.of(context).colorScheme.primary,
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                            ),
                            AcountButton(
                              widhtButton: widthButtonBottomsheet,
                              icon: Icons.login_rounded,
                              text: '  Logins com contas',
                              hasDescription: false,
                              description: '',
                              hasIcon: true,
                              color: Theme.of(context).colorScheme.primary,
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                            ),
                            AcountButton(
                              widhtButton: widthButtonBottomsheet,
                              icon: Icons.login_rounded,
                              text: '  Ver Tudo',
                              hasDescription: false,
                              description: '',
                              isBottomRounded: true,
                              hasIcon: false,
                              color: Colors.blue,
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  '  Configurações da Conta',
                                  style: TextStyle(
                                      fontFamily: 'Instagram',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                            AcountButton(
                              widhtButton: widthButtonBottomsheet,
                              icon: Icons.shield_outlined,
                              text: '  Senha e segurança',
                              hasDescription: false,
                              description: '',
                              isTopRounded: true,
                              hasIcon: true,
                              color: Theme.of(context).colorScheme.primary,
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                            ),
                            AcountButton(
                              widhtButton: widthButtonBottomsheet,
                              icon: FontAwesomeIcons.addressCard,
                              text: '  Dados pessoais',
                              hasDescription: false,
                              description: '',
                              hasIcon: true,
                              color: Theme.of(context).colorScheme.primary,
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                            ),
                            AcountButton(
                              widhtButton: widthButtonBottomsheet,
                              icon: Icons.perm_device_info_rounded,
                              text: '  Suas informações e permissões',
                              hasDescription: false,
                              description: '',
                              hasIcon: true,
                              color: Theme.of(context).colorScheme.primary,
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                            ),
                            AcountButton(
                              widhtButton: widthButtonBottomsheet,
                              icon: FontAwesomeIcons.bullhorn,
                              text: '  Preferências de anúncios',
                              hasDescription: false,
                              description: '',
                              hasIcon: true,
                              color: Theme.of(context).colorScheme.primary,
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                            ),
                            AcountButton(
                              widhtButton: widthButtonBottomsheet,
                              icon: Icons.credit_card_rounded,
                              text: '  Meta Play',
                              hasDescription: false,
                              description: '',
                              hasIcon: true,
                              color: Theme.of(context).colorScheme.primary,
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                            ),
                            AcountButton(
                              widhtButton: widthButtonBottomsheet,
                              icon: Icons.verified_outlined,
                              text: '  Meta Verified',
                              hasDescription: false,
                              description: '',
                              hasIcon: true,
                              isBottomRounded: true,
                              color: Theme.of(context).colorScheme.primary,
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            AcountButton(
                              widhtButton: widthButtonBottomsheet,
                              icon: Icons.account_circle,
                              text: '  Contas',
                              hasDescription: true,
                              description: '  Analise as contas que você tem nesta Central de Contas',
                              isTopRounded: true,
                              hasIcon: true,
                              color: Theme.of(context).colorScheme.primary,
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                            ),
                            AcountButton(
                              widhtButton: widthButtonBottomsheet,
                              icon: Icons.login_rounded,
                              text: '  Adicionar mais contas',
                              hasDescription: false,
                              description: '',
                              isBottomRounded: true,
                              hasIcon: false,
                              color: Colors.blue,
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                            ),
                            const SizedBox(height: 20,)
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        color: Theme.of(context).colorScheme.secondary,
                        child: Column(
                          children: [
                            const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.close_rounded,
                                      size: 30,
                                    )),
                                const Row(
                                  children: [
                                    Icon(FontAwesomeIcons.meta),
                                    Text(
                                      '  Meta',
                                      style: TextStyle(
                                        fontFamily: 'Instagram',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 40,
                                )
                              ],
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
