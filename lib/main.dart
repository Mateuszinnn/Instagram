import 'package:flutter/material.dart';
import 'themes/theme.dart';
import 'pages/home.dart';
import 'pages/search.dart';
import 'pages/reel.dart';
import 'pages/profile.dart';
import 'pages/publication.dart';
import 'components/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightmode,
      darkTheme: darkmode,
      home: const InstaHomePage(),
    );
  }
}

class InstaHomePage extends StatefulWidget {
  const InstaHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _InstaHomePage();
}

class _InstaHomePage extends State<InstaHomePage> {
  int _pageIndex = 0;
  final PageController _pageController = PageController();

  void _onTabSelected(int index) {
    setState(() {
      _pageIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        children: const <Widget>[
          HomePage(),
          SearchPage(),
          PublicationPage(),
          ReelPage(),
          Profile(),
        ],
      ),
      bottomNavigationBar: Bottomnavigationbar (
        pageIndex: _pageIndex,
        onTabSelected: _onTabSelected,
      ),
    );
  }
}