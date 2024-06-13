import 'package:flutter/material.dart';

class NavigationIconButton extends StatelessWidget {
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const NavigationIconButton({
    super.key,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 30,
      icon: Icon(icon),
      color: isSelected ? Theme.of(context).colorScheme.primary : null,
      onPressed: onTap,
      enableFeedback: false,
    );
  }
}
