import 'package:flutter/material.dart';
import 'package:instagram/components/profile_widget.dart';

class CommentInput extends StatelessWidget {
  final double widthTotal;

  const CommentInput({super.key, required this.widthTotal});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthTotal,
      color: Theme.of(context).colorScheme.onPrimaryContainer,
      child: Column(
        children: [
          const Divider(
            height: 0.5,
            thickness: 0.1,
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Spacer(),
              Text(
                '❤️',
                style: TextStyle(fontSize: 22),
              ),
              Spacer(),
              Text(
                '🙌',
                style: TextStyle(fontSize: 22),
              ),
              Spacer(),
              Text(
                '🔥',
                style: TextStyle(fontSize: 22),
              ),
              Spacer(),
              Text(
                '👏',
                style: TextStyle(fontSize: 22),
              ),
              Spacer(),
              Text(
                '😭',
                style: TextStyle(fontSize: 22),
              ),
              Spacer(),
              Text(
                '😍',
                style: TextStyle(fontSize: 22),
              ),
              Spacer(),
              Text(
                '😮',
                style: TextStyle(fontSize: 22),
              ),
              Spacer(),
              Text(
                '😂',
                style: TextStyle(fontSize: 22),
              ),
              Spacer(),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: ProfileWidget(
                  profileName: '',
                  paddingLeft: 0.1,
                  paddingTop: 0.1,
                  paddingRight: 0.1,
                  paddingBottom: 0.1,
                  size: 24,
                  isColumn: false,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: TextField(
                      style: const TextStyle(
                        fontFamily: 'Instagram',
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.gif_box_outlined,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        hintText: 'Adicione um comentário para compartilhar',
                        hintStyle: const TextStyle(
                          color: Color(0xFFA8A8A8),
                        ),
                        filled: true,
                        fillColor: Theme.of(context).colorScheme.secondary,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
