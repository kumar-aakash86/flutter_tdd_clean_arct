import 'package:clean_demo_doc/features/tdd_test/domain/entities/trivia.dart';

abstract class TriviaRepository {
  Future<Trivia>? getRandomTrivia();
}
