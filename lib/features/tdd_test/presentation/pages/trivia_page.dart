import 'package:clean_demo_doc/features/tdd_test/presentation/bloc/trivia_bloc.dart';
import 'package:clean_demo_doc/features/tdd_test/presentation/bloc/trivia_event.dart';
import 'package:clean_demo_doc/features/tdd_test/presentation/bloc/trivia_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TriviaPage extends StatefulWidget {
  const TriviaPage({Key? key}) : super(key: key);

  @override
  _TriviaPageState createState() => _TriviaPageState();
}

class _TriviaPageState extends State<TriviaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trivia Page"),
      ),
      body: BlocBuilder<TriviaBloc, TriviaState>(
        builder: (context, state) {
          if (state is Loaded) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  state.trivia!.number.toString(),
                  style: Theme.of(context).textTheme.headline3,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    state.trivia!.text,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            );
          } else if (state is Loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is Error) {
            return Center(
              child: Text(
                state.toString(),
                style: const TextStyle(color: Colors.red),
                textAlign: TextAlign.center,
              ),
            );
          }
          return const Center(
            child: Text("Waiting.."),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getRandom,
        child: const Icon(Icons.refresh),
      ),
    );
  }

  _getRandom() {
    BlocProvider.of<TriviaBloc>(context).add(GetRandomTrivia());
  }
}
