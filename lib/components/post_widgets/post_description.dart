import 'package:flutter/material.dart';

class PostDescription extends StatelessWidget {
  const PostDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 12),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: Text(
              'Profile Name',
              style: TextStyle(
                fontFamily: 'instagram',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            'Lorem ipsum dolor sit amet',
            style: TextStyle(
              fontFamily: 'instagram',
            ),
          ),
        ],
      ),
    );
  }
}
