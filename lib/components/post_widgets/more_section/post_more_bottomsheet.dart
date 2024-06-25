import 'package:flutter/material.dart';

class PostMoreBottomSheetButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final double width;
  final bool isColumn;
  final bool isTopRounded;
  final bool isBottomRounded;
  final bool isIconRotated;
  final bool isIconFlipped;
  final Color iconColor;
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;

  const PostMoreBottomSheetButton({
    super.key,
    required this.icon,
    required this.label,
    required this.width,
    required this.isColumn,
    this.isTopRounded = false,
    this.isBottomRounded = false,
    this.isIconRotated = false,
    this.isIconFlipped = false,
    this.iconColor = Colors.black,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.grey,
    this.borderColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.vertical(
          top: isTopRounded ? const Radius.circular(5.0) : Radius.zero,
          bottom: isBottomRounded ? const Radius.circular(5.0) : Radius.zero,
        ),
        border: Border.all(color: borderColor),
      ),
      child: TextButton(
        onPressed: () {},
        child: isColumn == true
            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: iconColor,
                  ),
                  Text(
                    label,
                    style: TextStyle(color: textColor, fontFamily: 'Instagram'),
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..rotateZ(
                          isIconRotated ? 270 * (3.1415926535897932 / 180) : 0)
                      ..scale(isIconFlipped ? -1.0 : 1.0, 1.0),
                    child: Icon(icon, color: iconColor),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    label,
                    style: TextStyle(color: textColor, fontFamily: 'Instagram'),
                  ),
                ],
              ),
      ),
    );
  }
}
