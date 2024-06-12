import 'package:flutter/material.dart';

class PostBottom extends StatelessWidget {
  const PostBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
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
        ),
        Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  'Ver todos os comentários',
                  style: TextStyle(
                    fontFamily: 'instagram',
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Text(
                      'Há x minutos',
                      style: TextStyle(
                          fontFamily: 'instagram', color: Colors.grey),
                    ),
                  ),
                  Text(
                    'Ver tradução',
                    style: TextStyle(
                      fontFamily: 'instagram',
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}