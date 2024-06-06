import 'package:flutter/material.dart';
import 'package:instagram/components/image_grid.dart';

class SearchPage extends StatefulWidget { 

  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: const Column(children: [
          SizedBox(
            height: 50,
            child: TextField(
              style:
                  TextStyle(fontFamily: 'Instagram', color: Color(0xFFA8A8A8)),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xFFA8A8A8),
                ),
                hintText: 'Pesquisar',
                filled: true,
                fillColor: Color(0xFF262626),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          )
        ]),
      ),
      body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ImageGrid(index: index);
            },
          ),
    );
  }
}
