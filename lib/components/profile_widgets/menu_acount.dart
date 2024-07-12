import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/profile_widgets/contas_widgets/acount_button.dart';
import 'package:instagram/components/search_widgets/custom_search_bar.dart';

class MenuAcount extends StatefulWidget {
  const MenuAcount({super.key});

  @override
  State<MenuAcount> createState() => _MenuAcountState();
}

class _MenuAcountState extends State<MenuAcount> {
  bool isExpanded = false;

  void _expandSearchBar() {
    setState(() {
      isExpanded = true;
    });
  }

  void _collapseSearchBar() {
    setState(() {
      isExpanded = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    double widthTotal = MediaQuery.of(context).size.width;
    double widthButton = widthTotal - 25;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new_rounded),
        title: Text(
          'Configurações e atividade',
          style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontFamily: 'Instagram',
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: CustomSearchBar(
                  isExpanded: isExpanded,
                  onExpand: _expandSearchBar,
                  onCollapse: _collapseSearchBar),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                children: [
                  Text(
                    'Sua conta',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Instagram',
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(
                    FontAwesomeIcons.meta,
                    color: Colors.grey,
                    size: 15,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Meta',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Instagram',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            AcountButton(
                widhtButton: widthButton,
                icon: FontAwesomeIcons.circleUser,
                text: 'Central de contas',
                hasDescription: true,
                description:
                    'Senhas, segurança, dados pessoais, preferências de anúncios',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Gerencie sia experência conectadas e configurações de contas nas tecnologias da meta.',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Instagram',
                        fontSize: 13,
                      ),
                    ),
                    TextSpan(
                      text: ' Saiba mais',
                      style: TextStyle(
                        color: Colors.blue,
                        fontFamily: 'Instagram',
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 5,
              height: 5,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Como você usa o Instagram',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Instagram',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            AcountButton(
                widhtButton: widthButton,
                icon: FontAwesomeIcons.bookmark,
                text: '  Salvos',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: FontAwesomeIcons.clockRotateLeft,
                text: '  Arquivar',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: FontAwesomeIcons.chartLine,
                text: '  Sua Atividade',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: FontAwesomeIcons.bell,
                text: '  Notificações',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: FontAwesomeIcons.clock,
                text: '  Tempo gasto',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            const SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 5,
              height: 5,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Para profissionais',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Instagram',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            AcountButton(
                widhtButton: widthButton,
                icon: FontAwesomeIcons.chartColumn,
                text: '  Insight',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: FontAwesomeIcons.clock,
                text: '  Conteúdo programado',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: FontAwesomeIcons.chartColumn,
                text: '  Ferramentas e controles para criadores de conteúdo',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: Icons.verified_outlined,
                text: '  Meta Verified',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            const SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 5,
              height: 5,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Quem pode ver seu conteúdo',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Instagram',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            AcountButton(
                widhtButton: widthButton,
                icon: FontAwesomeIcons.lock,
                text: '  Privacidade da conta',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: FontAwesomeIcons.star,
                text: '  Amigos próximos',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: Icons.grid_view_outlined,
                text: '  Publicações cruzadas',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: Icons.block,
                text: '  Bloqueados',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: FontAwesomeIcons.eyeSlash,
                text: '  Ocultar story e transmissão ao vivo',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            const SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 5,
              height: 5,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Como os outros podem interagir com você',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Instagram',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            AcountButton(
                widhtButton: widthButton,
                icon: FontAwesomeIcons.facebookMessenger,
                text: '  Mensagens e respostas ao story',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: FontAwesomeIcons.threads,
                text: '  Marcações e menções',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: FontAwesomeIcons.comment,
                text: '  Comentários',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: FontAwesomeIcons.arrowsRotate,
                text: '  Compartilhamento e remixes',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: Icons.person_off_outlined,
                text: '  Restritas',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: FontAwesomeIcons.circleExclamation,
                text: '  Limitar interações',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: FontAwesomeIcons.font,
                text: '  Palavras ocultas',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: Icons.person_add_alt_outlined,
                text: '  Seguir e convidar amigos',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            const SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 5,
              height: 5,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'O que você vê',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Instagram',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            AcountButton(
                widhtButton: widthButton,
                icon: FontAwesomeIcons.star,
                text: '  Favoritos',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: FontAwesomeIcons.bellSlash,
                text: '  Silenciados',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: Icons.perm_media_outlined,
                text: '  Sugestões de conteúdo',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: FontAwesomeIcons.heart,
                text: '  Número de curtidas e compartilhamentos',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            const SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 5,
              height: 5,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Seu App e suas mídias',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Instagram',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            AcountButton(
                widhtButton: widthButton,
                icon: Icons.phone_iphone_rounded,
                text: '  Permissões do dispositivo',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: Icons.download_rounded,
                text: '  Arquivar e baixar',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: Icons.accessibility,
                text: '  Acessibilidade',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            AcountButton(
                widhtButton: widthButton,
                icon: Icons.translate,
                text: '  Idioma',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
                AcountButton(
                widhtButton: widthButton,
                icon: Icons.signal_cellular_alt,
                text: '  Qualidade de mídia',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
                AcountButton(
                widhtButton: widthButton,
                icon: Icons.computer_rounded,
                text: '  Permissões do site',
                hasDescription: false,
                description: '',
                hasIcon: true,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Theme.of(context).colorScheme.surface),
            const SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 5,
              height: 5,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ],
        ),
      ),
    );
  }
}
