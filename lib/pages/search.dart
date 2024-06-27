import 'package:flutter/material.dart';
import 'package:instagram/components/image_grid.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: TextField(
                      onTap: () {
                        setState(() {
                          isExpanded = true;
                        });
                      },
                      style: const TextStyle(
                        fontFamily: 'Instagram',
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color(0xFFA8A8A8),
                        ),
                        hintText: 'Pesquisar',
                        hintStyle: const TextStyle(
                          color: Color(0xFFA8A8A8),
                        ),
                        filled: true,
                        fillColor: Theme.of(context).colorScheme.secondary,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                if (isExpanded)
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isExpanded = false;
                      });
                    },
                    child: const Text(
                      'Cancelar',
                      style: TextStyle(fontFamily: 'Instagram', fontSize: 18),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
      body: isExpanded
          ? SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Recentes',
                        style: TextStyle(
                            fontFamily: 'Instagram',
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Ver tudo',
                            style: TextStyle(
                                fontFamily: 'Instagram',
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ))
                    ],
                  )
                ],
              ),
            )
          : ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ImageGrid(index: index);
              },
            ),
    );
  }
}
