import 'package:flutter/material.dart';
/*
※ 解析に必須のツール
「Command + Shift + P」で「Flutter: Open DevTools Widget Inspector Page」
https://api.flutter.dev/flutter/widgets/Column-class.html
縦方向にWidgetを重ねる
縦方向は行けるだけ行く。（初期値：infinity）
横方向は０スタート。
height, widthがunconstrainedなら、それ以上大きくならない。
*/

class ColumnPage extends StatelessWidget {
  const ColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Column")),
        body: const ColumnBody(),
      ),
    );
  }
}

class ColumnBody extends StatelessWidget {
  const ColumnBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // height : 0~741 => 741
    // width  : 0~390 => 9
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("1"),
        Column(
            // width : 9(unconstrained)
            children: const [Text("2")]),
        // width  : 7(unconstrained)
        const Text("3"),
        // SizedBoxの中でExpandedは使えない
        // const SizedBoxが使える
        const SizedBox(
          child: Card(
            child: Text("width=100"),
          ),
          width: 100,
        ),
        // Containerの中でExpandedは使える
        // const Containerが使えない
        Container(
          child: const Card(
            child: Text("width=200"),
          ),
          width: 200,
        ),
      ],
    );
  }
}
