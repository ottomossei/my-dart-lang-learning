/*
Navigator 
Push & Popで、stackなページ遷移を実現
Scaffoldのbodyだけを遷移などはせず、
全画面ごと遷移する。
そのため、各ページにScaffoldを記載する必要がある

onPressed: () => {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return TestPage2();
                      }
onPressed: () => {Navigator.of(context).pop()},
上記のようにして、出たり戻ったりできる。

https://zenn.dev/kazutxt/books/flutter_practice_introduction/viewer/beginner_page
*/
import 'package:flutter/material.dart';
import 'package:helloworld/screen_transition/navigator/TestPage1.dart';

class MyNavigatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyNavigatorPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyNavigatorPage extends StatefulWidget {
  MyNavigatorPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyNavigatorPageState createState() => _MyNavigatorPageState();
}

class _MyNavigatorPageState extends State<MyNavigatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: TestNavigatorPage1());
  }
}
