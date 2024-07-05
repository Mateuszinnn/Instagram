import 'package:flutter/material.dart';
import 'package:instagram/components/search_widgets/search_result.dart';

class SearchSection extends StatefulWidget {
  final bool followButton;
  final bool closeIcon;
  final int numberOfResults;
  final IconData icon;

  const SearchSection(
      {Key? key, required this.followButton, required this.closeIcon, required this.numberOfResults, required this.icon})
      : super(key: key);

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
          widget.numberOfResults,
          (index) => SearchResult(
            followButton: widget.followButton,
            closeIcon: widget.closeIcon, icon: widget.icon,
          ),
        ),
      ),
    );
  }
}
