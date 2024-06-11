import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  final String image;

  const PostWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool _isFavorite = false;
  bool _isSaved = false;

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  void _toggleSaved() {
    setState(() {
      _isSaved = !_isSaved;
    });
  }

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
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      color: Theme.of(context).colorScheme.secondary,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Row(
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.bookmark_border), onPressed: () {  },
                                ),
                                IconButton(
                                  icon: const Icon(Icons.add), onPressed: () {  },
                                ),
                              ],
                            ),
                            ListTile(
                              leading:  const Icon(Icons.link),
                              title: const Text('Get link'),
                              onTap: () {},
                            ),
                            ListTile(
                              leading: const Icon(Icons.edit),
                              title: const Text('Edit'),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
        SizedBox(
            width: double.infinity,
            child: Image.asset(widget.image, fit: BoxFit.contain)),
        Row(
          children: [
            IconButton(
              onPressed: _toggleFavorite,
              icon: Icon(
                _isFavorite ? Icons.favorite : Icons.favorite_border,
                color: _isFavorite ? Colors.red : null,
              ),
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
              onPressed: _toggleSaved,
              icon: Icon(
                _isSaved ? Icons.bookmark : Icons.bookmark_border_sharp,
                color: _isSaved ? Colors.white : null,
              ),
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
