import 'package:flutter/material.dart';
import 'package:instagram/components/notification_widgets/notification_date.dart';
import 'package:instagram/components/notification_widgets/notification_sugestion.dart';
import 'package:instagram/components/search_widgets/search_section.dart';


class NotificationSection extends StatelessWidget {
  const NotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Notificações',
          style: TextStyle(
            fontFamily: 'Instagram',
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const NotificationDate(
            date: 'Hoje',
            image: 'assets/images/sushi.jpeg',
          ),
          const NotificationDate(
              date: 'Ontem', image: 'assets/images/tacos.jpg'),
          const NotificationDate(
              date: 'Últimos 7 Dias', image: 'assets/images/pasta.jpeg'),
          const NotificationDate(
              date: 'Últimos 30 Dias', image: 'assets/images/pizza.jpeg'),
          const NotificationDate(
              date: 'Mais antigas', image: 'assets/images/cachorro-quente.jpg'),
          Container(
            color: Theme.of(context).colorScheme.surface,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                child: Text(
                  'Sugestões pra você',
                  style: TextStyle(
                    fontFamily: 'Instagram',
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ),
          const SearchSection(followButton: true,),
          Container(
            color: Theme.of(context).colorScheme.surface,
            child: SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationSugestion()));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ver todas sugestões',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color(0xFFA8A8A8),
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
