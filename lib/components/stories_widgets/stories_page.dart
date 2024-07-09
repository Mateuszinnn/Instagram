import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/post_widgets/send_section/send_button.dart';
import 'dart:async';

import 'package:instagram/components/profile_widget.dart';
import 'package:instagram/pages/home.dart';

class StoriesPage extends StatefulWidget {
  const StoriesPage({super.key});

  @override
  StoriesPageState createState() => StoriesPageState();
}

class StoriesPageState extends State<StoriesPage> {
  double _progressValue = 0.0;
  late Timer _timer;
  int _progressMilliseconds = 0;
  bool _isFavorite = false;
  int _currentImageIndex = 0;
  bool _isNavigating = false;
  final List<String> _images = [
    "assets/images/mineira.jpg",
    "assets/images/images.jpeg",
    "assets/images/sushi.jpeg",
    "assets/images/tacos.jpg",
    "assets/images/pasta.jpeg",
    "assets/images/cachorro-quente.jpg",
    "assets/images/pizza.jpeg",
  ];

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    const duration = Duration(milliseconds: 10);
    int totalMilliseconds = 15000;

    _timer = Timer.periodic(duration, (Timer timer) {
      setState(() {
        _progressMilliseconds += 10;
        _progressValue = _progressMilliseconds / totalMilliseconds;

        if (_progressMilliseconds >= totalMilliseconds) {
          _nextImage();
        }
      });
    });
  }

  void _nextImage() {
    setState(() {
      _currentImageIndex = (_currentImageIndex + 1) % _images.length;
      _progressValue = 0.0;
      _progressMilliseconds = 0;
    });
  }

  void _previousImage() {
    setState(() {
      _currentImageIndex =
          (_currentImageIndex - 1 + _images.length) % _images.length;
      _progressValue = 0.0;
      _progressMilliseconds = 0;
    });
  }

  void _onTap(TapUpDetails details) {
    if (!_isNavigating) {
      final width = MediaQuery.of(context).size.width;
      final isLeftSide = details.localPosition.dx < width / 2;

      setState(() {
        _isNavigating = true;
        if (isLeftSide) {
          _previousImage();
        } else {
          _nextImage();
        }

        Future.delayed(const Duration(milliseconds: 300), () {
          setState(() {
            _isNavigating = false;
          });
        });
      });
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    double widthTotal = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          SizedBox(
            width: (MediaQuery.of(context).size.width - 20),
            height: 2,
            child: LinearProgressIndicator(
              value: _progressValue,
              backgroundColor: Colors.grey[600],
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ),
          Row(
            children: [
              const ProfileWidget(
                profileName: "Profile Name",
                paddingLeft: 10,
                paddingTop: 10,
                paddingRight: 5,
                paddingBottom: 0,
                size: 20,
                isColumn: false,
                hasDescription: false,
                description: '',
              ),
              const SizedBox(width: 5),
              const Text(
                'x h',
                style: TextStyle(fontFamily: 'Instagram', color: Colors.grey),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Expanded(
            child: GestureDetector(
              onTapUp: _onTap,
              child: Center(
                child: Image.asset(_images[_currentImageIndex]),
              ),
            ),
          ),
          Row(
            children: [
              const SizedBox(width: 5),
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    showDragHandle: true,
                    backgroundColor: Theme.of(context).colorScheme.tertiary,
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 60,
                        color: Theme.of(context).colorScheme.tertiary,
                        child: Row(
                          children: [
                            const ProfileWidget(
                              profileName: '',
                              paddingLeft: 10,
                              paddingTop: 0,
                              paddingRight: 10,
                              paddingBottom: 0,
                              size: 20,
                              isColumn: false,
                              hasDescription: false,
                              description: '',
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 40,
                                child: TextField(
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontFamily: 'Instagram',
                                    color: Colors.white,
                                  ),
                                  decoration: InputDecoration(
                                    hintText:
                                        'Adicione um comentário para Profile Name',
                                    hintStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                    filled: true,
                                    fillColor:
                                        Theme.of(context).colorScheme.secondary,
                                    border: const OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      );
                    },
                  );
                },
                icon: const Icon(
                  FontAwesomeIcons.comment,
                  color: Colors.white,
                ),
              ),
              const Expanded(
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Instagram',
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15.0),
                      hintText: 'Enviar Mensagem',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: _toggleFavorite,
                icon: Icon(
                  _isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: _isFavorite ? Colors.red : null,
                ),
              ),
              IconButton(
                onPressed: () => showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return SendButton(widthTotal: widthTotal);
                  },
                ),
                icon: const Icon(
                  Icons.send_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10)
        ],
      ),
    );
  }
}
