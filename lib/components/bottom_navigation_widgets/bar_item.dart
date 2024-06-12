import 'package:flutter/material.dart';
import 'package:instagram/components/bottom_navigation_widgets/navigation_icon_button.dart';


class BarItem extends StatelessWidget {
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const BarItem({
    Key? key,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: NavigationIconButton(
        icon: icon,
        isSelected: isSelected,
        onTap: onTap,
      ),
    );
  }
}
