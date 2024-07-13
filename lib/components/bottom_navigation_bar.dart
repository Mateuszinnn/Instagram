import 'package:flutter/material.dart';
import 'package:instagram/components/bottom_navigation_widgets/bar_item.dart';
import 'package:instagram/pages/publication.dart';

class Bottomnavigationbar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTabSelected;

  const Bottomnavigationbar({
    super.key,
    required this.pageIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Divider(
          height: 0.1,
          thickness: 0.1,
          color: Theme.of(context).colorScheme.primary,
        ),
        BottomAppBar(
          color: Theme.of(context).colorScheme.surface,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BarItem(
                isSelected: pageIndex == 0,
                icon: pageIndex == 0 ? Icons.home_rounded : Icons.home_outlined,
                onTap: () => onTabSelected(0),
              ),
              BarItem(
                isSelected: pageIndex == 1,
                icon: pageIndex == 1 ? Icons.search : Icons.search,
                onTap: () => onTabSelected(1),
              ),
              BarItem(
                isSelected: pageIndex == 2,
                icon: pageIndex == 2 ? Icons.add_box : Icons.add_box_outlined,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PublicationPage(),
                  ),
                ),
              ),
              BarItem(
                isSelected: pageIndex == 3,
                icon: pageIndex == 3
                    ? Icons.video_library
                    : Icons.video_library_outlined,
                onTap: () => onTabSelected(3),
              ),
              BarItem(
                isSelected: pageIndex == 4,
                icon: pageIndex == 4 ? Icons.person : Icons.person_outline,
                onTap: () => onTabSelected(4),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
