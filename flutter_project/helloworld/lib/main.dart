import 'package:flutter/material.dart';
import 'stl/column.dart';
import 'package:helloworld/screen_transition/navigator/main.dart';
import 'package:helloworld/screen_transition/pageview/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Debug"),
          ),
          backgroundColor: Colors.white,
          body: const MyAppPage()),
    );
  }
}

class MyAppPage extends StatelessWidget {
  const MyAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ColumnPage()));
            },
            child: const Text("Column")),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyNavigatorApp()));
            },
            child: const Text("Navi")),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyPageViewApp()));
            },
            child: const Text("PageView"))
      ],
    );
  }
}
