/*
要件：
ボタンを押すと、それに応じてアイコンが変更される。
*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/bloc_training/event.dart';
import 'package:helloworld/bloc_training/state.dart';

import 'bloc.dart';

class MyPageIconChangeApp extends StatelessWidget {
  const MyPageIconChangeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('IconChangeByBLoC'),
          ),
          backgroundColor: Colors.white,
          body: BlocProvider(
            create: (context) => IconBloc(),
            child: const IconPage(),
          )),
    );
  }
}

class IconPage extends StatelessWidget {
  const IconPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Which do you like?"),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              heroTag:
                  "hero1", // unique tag to distinguish FloatingActionButton
              onPressed: () => context.read<IconBloc>().add(TapSunnyEvent()),
              tooltip: 'Sunny',
              child: const Icon(Icons.wb_sunny),
            ),
            const SizedBox(width: 30),
            FloatingActionButton(
              heroTag:
                  "hero2", // unique tag to distinguish FloatingActionButton
              onPressed: () => context.read<IconBloc>().add(TapCloudEvent()),
              tooltip: 'Cloud',
              child: const Icon(Icons.cloud),
            ),
          ],
        ),
        const SizedBox(height: 30),
        BlocBuilder<IconBloc, AnswerState>(builder: (context, state) {
          return Text(state.answer);
        })
      ],
    ));
  }
}
