import 'package:flutter/material.dart';

class TestNavigatorPage3 extends StatelessWidget {
  const TestNavigatorPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Test3"),
        ),
        body: Center(
            child: TextButton(
                onPressed: () => {Navigator.of(context).pop()},
                child: const Text("戻る", style: TextStyle(fontSize: 80)))));
  }
}
