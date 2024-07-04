import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  final bool isExpanded;
  final VoidCallback onExpand;
  final VoidCallback onCollapse;

  const CustomSearchBar({
    super.key,
    required this.isExpanded,
    required this.onExpand,
    required this.onCollapse,
  });

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: TextField(
              onTap: () {
                widget.onExpand();
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
        if (widget.isExpanded)
          TextButton(
            onPressed: () {
              widget.onCollapse();
            },
            child: const Text(
              'Cancelar',
              style: TextStyle(fontFamily: 'Instagram', fontSize: 18),
            ),
          ),
      ],
    );
  }
}
