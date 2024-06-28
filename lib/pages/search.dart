import 'package:flutter/material.dart';
import 'package:instagram/components/image_grid.dart';
import 'package:instagram/components/search_widgets/search_recent.dart';
import 'package:instagram/components/search_widgets/search_section.dart';

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
              child: Container(
                color: Theme.of(context).colorScheme.surface,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(
                      height: 0.1,
                      thickness: 0.1,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
                      child: Row(
                        children: [
                          const Text(
                            'Recentes',
                            style: TextStyle(
                                fontFamily: 'Instagram',
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          const Spacer(),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SearchRecent()),
                                );
                              },
                              child: const Text(
                                'Ver tudo',
                                style: TextStyle(
                                    fontFamily: 'Instagram',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                    fontSize: 15),
                              )),
                        ],
                      ),
                    ),
                    const SearchSection(followButton: false,),
                  ],
                ),
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
