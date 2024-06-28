import 'package:flutter/material.dart';
import 'package:instagram/components/search_widgets/search_result.dart';

class SearchSection extends StatefulWidget {
  final bool followButton;

  const SearchSection({Key? key, required this.followButton}) : super(key: key);

  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          20,
          (index) => SearchResult(followButton: widget.followButton),
        ),
      ),
    );
  }
}
