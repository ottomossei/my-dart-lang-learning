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
    return BlocProvider(
        create: (context) => IconBloc(),
        child: MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: const Text('IconChangeByBLoC'),
            ),
            backgroundColor: Colors.white,
            body: const IconPage(),
          ),
        ));
  }
}

class IconPage extends StatelessWidget {
  const IconPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final iconBloc = context.watch<IconBloc>();
    return Center(
        child: BlocBuilder<IconBloc, IconState>(builder: (context, state) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Which do you like?"),
          FloatingActionButton(
            onPressed: () => iconBloc.add(SunnyEvent()),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () => iconBloc.add(RainyEvent()),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      );
    }));
  }
}
