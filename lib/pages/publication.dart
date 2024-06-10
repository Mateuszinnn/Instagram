import 'package:flutter/material.dart';

class PublicationPage extends StatefulWidget {
  const PublicationPage({Key? key}) : super(key: key);

  @override
  _PublicationPageState createState() => _PublicationPageState();
}

class _PublicationPageState extends State<PublicationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Publication Page'),
      ),
    );
  }
}
