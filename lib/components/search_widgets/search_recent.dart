import 'package:flutter/material.dart';
import 'package:instagram/components/search_widgets/search_section.dart';

class SearchRecent extends StatelessWidget {
  const SearchRecent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Pesquisas resentes',
          style: TextStyle(
              fontFamily: 'Instagram',
              color: Theme.of(context).colorScheme.primary,
              fontSize: 18),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Limpar tudo',
              style: TextStyle(
                  fontFamily: 'Instagram', color: Colors.blue, fontSize: 18),
            ),
          )
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.1),
          child: Divider(
            thickness: 0.1,
            height: 0.1,
          ),
        ),
      ),
      body: const Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
                child: SearchSection(followButton: false, closeIcon: false, numberOfResults: 20,)),
          ),
        ],
      ),
    );
  }
}
