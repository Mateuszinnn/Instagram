import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final String image;
  
  const PostWidget({
    Key? key, 
    required this.image,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 18, 12, 12),
              child: CircleAvatar(
                radius: 17.1,
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: CircleAvatar(
                  radius: 17,
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  child: Icon(
                    Icons.person,
                    size: 17,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ),
            const Text(
              'Profile Name',
              style: TextStyle(fontFamily: 'instagram bold'),
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.more_horiz),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(
            width: double.infinity,
            child: Image.asset(image, fit: BoxFit.contain)),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.chat_bubble_outline),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.send_outlined),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bookmark_border_sharp),
            ),
          ],
        ),
        const Padding(
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
        const Align(
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
        const Padding(
          padding: EdgeInsets.only(left: 12),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: Text(
                  'Há x minutos',
                  style: TextStyle(fontFamily: 'instagram', color: Colors.grey),
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
    );
  }
}
