import 'package:flutter/material.dart';
import 'package:helloworld/screen_transition/navigator/test_page2.dart';

class TestNavigatorPage1 extends StatelessWidget {
  const TestNavigatorPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Test1"),
        ),
        body: Center(
            child: TextButton(
                onPressed: () => {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const TestNavigatorPage2();
                      }))
                    },
                child: const Text("進む", style: TextStyle(fontSize: 80)))));
  }
}
