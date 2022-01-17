import 'package:clean_demo_doc/features/tdd_test/presentation/pages/trivia_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MultiBlocProvider(providers: [
      //   BlocProvider(create: (_) => )
      // ], child: child),
    );
  }
}
