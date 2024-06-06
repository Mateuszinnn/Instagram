import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Bottomnavigationbar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTabSelected;

  const Bottomnavigationbar({
    Key? key,
    required this.pageIndex,
    required this.onTabSelected,
  }) : super(key: key);

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
              const Spacer(),
              IconButton(
                iconSize: 30,
                icon: Icon(pageIndex == 0 ? Icons.home_rounded : Icons.home_outlined),
                color: Theme.of(context).colorScheme.primary,
                onPressed: () => onTabSelected(0),
                enableFeedback: false,
              ),
              const Spacer(),
              IconButton(
                iconSize: 30,
                icon: pageIndex == 1
                    ? const FaIcon(
                        FontAwesomeIcons.magnifyingGlass,
                        size: 28,
                      )
                    : const Icon(Icons.search),
                color: Theme.of(context).colorScheme.primary,
                onPressed: () => onTabSelected(1),
                enableFeedback: false,
              ),
              const Spacer(),
              IconButton(
                iconSize: 30,
                icon: Icon(pageIndex == 2 ? Icons.add_box : Icons.add_box_outlined),
                color: Theme.of(context).colorScheme.primary,
                onPressed: () => onTabSelected(2),
                enableFeedback: false,
              ),
              const Spacer(),
              IconButton(
                iconSize: 30,
                icon: Icon(pageIndex == 3 ? Icons.video_library : Icons.video_library_outlined),
                color: Theme.of(context).colorScheme.primary,
                onPressed: () => onTabSelected(3),
                enableFeedback: false,
              ),
              const Spacer(),
              IconButton(
                iconSize: 30,
                icon: Icon(pageIndex == 4 ? Icons.person : Icons.person_outline),
                color: Theme.of(context).colorScheme.primary,
                onPressed: () => onTabSelected(4),
                enableFeedback: false,
              ),
              const Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}