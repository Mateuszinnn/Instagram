import 'package:flutter/material.dart';

class OptionsOtherProfile extends StatelessWidget {
  const OptionsOtherProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 1.0,
      minChildSize: 0.9, 
      maxChildSize: 1.0, 
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          color: Theme.of(context).colorScheme.onPrimaryContainer,
          padding: const EdgeInsets.all(10),
          width: (MediaQuery.of(context).size.width - 30),
          child: ListView(
            controller: scrollController,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Restringir',
                  style: TextStyle(fontFamily: 'Instagram', color: Colors.red),
                ),
              ),
              const Divider(thickness: 0.1, height: 0.1),
              TextButton(
                onPressed: () {},
                child: const Text('Bloquear',
                  style: TextStyle(fontFamily: 'Instagram', color: Colors.red),
                ),
              ),
              const Divider(thickness: 0.1, height: 0.1),
              TextButton(
                onPressed: () {},
                child: const Text('Denunciar',
                  style: TextStyle(fontFamily: 'Instagram', color: Colors.red),
                ),
              ),
              const Divider(thickness: 0.1, height: 0.1),
              TextButton(
                onPressed: () {},
                child: Text('Sobre essa conta',
                  style: TextStyle(
                    fontFamily: 'Instagram',
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              const Divider(thickness: 0.1, height: 0.1),
              TextButton(
                onPressed: () {},
                child: Text('Ver atividade compartilhada',
                  style: TextStyle(
                    fontFamily: 'Instagram',
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              const Divider(thickness: 0.1, height: 0.1),
              TextButton(
                onPressed: () {},
                child: Text('Ocultar seu story',
                  style: TextStyle(
                    fontFamily: 'Instagram',
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              const Divider(thickness: 0.1, height: 0.1),
              TextButton(
                onPressed: () {},
                child: Text('Remover seguidor',
                  style: TextStyle(
                    fontFamily: 'Instagram',
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              const Divider(thickness: 0.1, height: 0.1),
              TextButton(
                onPressed: () {},
                child: Text('Copiar URL do perfil',
                  style: TextStyle(
                    fontFamily: 'Instagram',
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              const Divider(thickness: 0.1, height: 0.1),
              TextButton(
                onPressed: () {},
                child: Text('Compartilhar esse perfil',
                  style: TextStyle(
                    fontFamily: 'Instagram',
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              const Divider(thickness: 0.1, height: 0.1),
              TextButton(
                onPressed: () {},
                child: Text('QR code',
                  style: TextStyle(
                    fontFamily: 'Instagram',
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              const Divider(thickness: 0.1, height: 0.1),
              TextButton(
                onPressed: () {},
                child: Text('Cancelar',
                  style: TextStyle(
                    fontFamily: 'Instagram',
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              const Divider(thickness: 0.1, height: 0.1),
            ],
          ),
        );
      },
    );
  }
}
