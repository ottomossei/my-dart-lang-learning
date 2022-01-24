import 'package:flutter/material.dart';
import 'package:helloworld/screen_transition/navigator/TestPage3.dart';

class TestNavigatorPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Test2"),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
              onPressed: () => {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return TestNavigatorPage3();
                    }))
                  },
              child: Text("進む", style: TextStyle(fontSize: 80))),
          TextButton(
              onPressed: () => {Navigator.of(context).pop()},
              child: Text("戻る", style: TextStyle(fontSize: 80)))
        ])));
  }
}