import 'package:flutter/material.dart';
import 'package:helloworld/screen_transition/navigator/TestPage2.dart';

class TestNavigatorPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Test1"),
        ),
        body: Center(
            child: TextButton(
                onPressed: () => {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return TestNavigatorPage2();
                      }))
                    },
                child: Text("進む", style: TextStyle(fontSize: 80)))));
  }
}
