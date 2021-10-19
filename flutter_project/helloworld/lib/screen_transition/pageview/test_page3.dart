import 'package:flutter/material.dart';

class TestPage3 extends StatelessWidget {
  const TestPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Test3"),
        ),
        body: Center(
            child: Container(
                color: Colors.greenAccent,
                child: const Text("Test3", style: TextStyle(fontSize: 80)))));
  }
}
