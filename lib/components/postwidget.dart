import 'package:flutter/material.dart';
import 'package:instagram/components/post_widgets/post_profile_header.dart';
import 'package:instagram/components/post_widgets/post_interaction_button.dart';
import 'package:instagram/components/post_widgets/post_description.dart';
import 'package:instagram/components/post_widgets/post_comments_section.dart';

class PostWidget extends StatefulWidget {
  final String image;

  const PostWidget({
    super.key,
    required this.image,
  });

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
    double widthTotal = MediaQuery.of(context).size.width;
    double widthButtonBottomsheet = (widthTotal / 2) - 15;
    double height = 70;

    return Column(
      children: [
        PostProfileHeader(
          height: height,
          widthButton: widthButtonBottomsheet,
        ),
        SizedBox(
          width: double.infinity,
          child: Image.asset(widget.image, fit: BoxFit.contain),
        ),
        PostInteractionButton(
          isFavorite: _isFavorite,
          toggleFavorite: _toggleFavorite,
          isSaved: _isSaved,
          toggleSaved: _toggleSaved,
        ),
        const PostDescription(),
        const PostCommentsSection(),
      ],
    );
  }
}
