import 'package:clean_demo_doc/features/tdd_test/domain/entities/trivia.dart';
import 'package:equatable/equatable.dart';

abstract class TriviaState extends Equatable {
  @override
  List<Object?> get props => [];
}

class Initial extends TriviaState {
  @override
  List<Object?> get props => [];
}

class Loading extends TriviaState {
  @override
  List<Object?> get props => [];
}

class Loaded extends TriviaState {
  final Trivia? trivia;
  Loaded(this.trivia);

  @override
  List<Object?> get props => [];
}

class Error extends TriviaState {
  final Exception exception;
  Error(this.exception);

  @override
  List<Object?> get props => [];
}
