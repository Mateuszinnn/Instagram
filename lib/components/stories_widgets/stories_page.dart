import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/components/post_widgets/send_section/send_button.dart';
import 'dart:async';

import 'package:instagram/components/profile_widget.dart';
import 'package:instagram/pages/home.dart';
import 'package:instagram/pages/other_profile.dart';

class StoriesPage extends StatefulWidget {
  const StoriesPage({super.key});

  @override
  StoriesPageState createState() => StoriesPageState();
}

class StoriesPageState extends State<StoriesPage> {
  late PageController _pageController;
  double _progressValue = 0.0;
  late Timer _timer;
  int _progressMilliseconds = 0;
  bool _isFavorite = false;
  final List<String> _images = [
    "assets/images/mineira.jpg",
    "assets/images/images.jpeg",
    "assets/images/sushi.jpeg",
    "assets/images/tacos.jpg",
    "assets/images/pasta.jpeg",
    "assets/images/cachorro-quente.jpg",
    "assets/images/pizza.jpeg",
    "assets/images/teste.jpeg",
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
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
    if (_pageController.page! < _images.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
      );
    } else {
      _pageController.jumpToPage(0);
    }
    _resetProgress();
  }

  void _previousImage() {
    if (_pageController.page! > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
      );
    } else {
      _pageController.jumpToPage(_images.length - 1);
    }
    _resetProgress();
  }

  void _resetProgress() {
    setState(() {
      _progressValue = 0.0;
      _progressMilliseconds = 0;
    });
  }

  void _onTap(TapUpDetails details) {
    final width = MediaQuery.of(context).size.width;
    final isLeftSide = details.localPosition.dx < width / 2;

    if (isLeftSide) {
      _previousImage();
    } else {
      _nextImage();
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
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
      body: SafeArea(
        child: PageView.builder(
          controller: _pageController,
          itemCount: _images.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  color: const Color.fromARGB(255, 39, 39, 39),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                ),
                Positioned.fill(
                  child: Image.asset(
                    _images[index],
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(height: 40),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 20,
                      height: 2,
                      child: LinearProgressIndicator(
                        value: _progressValue,
                        backgroundColor: Colors.grey[600],
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const OtherProfile(),
                              ),
                            );
                          },
                          child: const ProfileWidget(
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
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          'x h',
                          style: TextStyle(
                              fontFamily: 'Instagram', color: Colors.grey),
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
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.black,
                      child: Row(
                        children: [
                          const SizedBox(width: 5),
                          IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                showDragHandle: true,
                                backgroundColor: const Color(0xFF484848),
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    height: 60,
                                    color: const Color(0xFF484848),
                                    child: const Row(
                                      children: [
                                        ProfileWidget(
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
                                              style: TextStyle(
                                                fontFamily: 'Instagram',
                                                color: Colors.white,
                                              ),
                                              decoration: InputDecoration(
                                                hintText:
                                                    'Adicione um comentário para Profile Name',
                                                hintStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                ),
                                                filled: true,
                                                fillColor: Color(0xFF363636),
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(25)),
                                                  borderSide: BorderSide.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: _toggleFavorite,
                            icon: Icon(
                              _isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: _isFavorite ? Colors.red : Colors.white,
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
                          const SizedBox(height: 60),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
