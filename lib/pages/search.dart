import 'package:flutter/material.dart';
import 'package:instagram/components/image_grid.dart';
import 'package:instagram/components/search_widgets/result_search.dart';
import 'package:instagram/components/search_widgets/custom_search_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool isExpanded = false;

  Future<void> _refresh() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {});
  }

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Column(
          children: [
            CustomSearchBar(
              isExpanded: isExpanded,
              onExpand: _expandSearchBar,
              onCollapse: _collapseSearchBar,
            ),
          ],
        ),
      ),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: isExpanded
            ? const ResultSearch(textButton: 'Ver Tudo', title: 'Recentes', closeIcon: false, numberOfResults: 20,)
            : ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ImageGrid(index: index);
                },
              ),
      ),
    );
  }
}
