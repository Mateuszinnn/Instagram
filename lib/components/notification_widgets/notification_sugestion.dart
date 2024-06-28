import 'package:flutter/material.dart';
import 'package:instagram/components/search_widgets/search_section.dart';

class NotificationSugestion extends StatelessWidget {
  const NotificationSugestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Encontrar pessoas',
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 15,
          ),
        ),
      ),
      body: const SingleChildScrollView(child: SearchSection(followButton: true,)),
    );
  }
}
