import 'package:clean_demo_doc/features/tdd_test/presentation/pages/trivia_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/tdd_test/presentation/bloc/trivia_bloc.dart';
import 'injection.dart' as di;

void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TriviaBloc>(
      create: (_) => di.inj<TriviaBloc>(),
      child: MaterialApp(
        title: 'TDD Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const TriviaPage(),
      ),
    );
  }
}
