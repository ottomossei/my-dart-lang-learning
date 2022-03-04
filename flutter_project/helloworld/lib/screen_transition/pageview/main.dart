/*
PageView
Navigatorを使用せず、ページ遷移する
MyPageViewAppに３つのページが内包されており、その中の選択を




https://zenn.dev/kazutxt/books/flutter_practice_introduction/viewer/beginner_page
*/
import 'package:flutter/material.dart';
import 'test_page1.dart';
import 'test_page2.dart';
import 'test_page3.dart';

class MyPageViewApp extends StatelessWidget {
  const MyPageViewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PageController _pageController;
  int _selectedIndex = 0;

  // ボトムメニューの遷移先画面
  final _pages = [
    const TestPage1(),
    const TestPage2(),
    const TestPage3(),
  ];
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //return LoginPage();

    return Scaffold(
        body: PageView(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            children: _pages));
  }
}
