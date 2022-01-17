import 'package:clean_demo_doc/features/tdd_test/domain/entities/trivia.dart';
import 'package:clean_demo_doc/features/tdd_test/domain/repositories/trivia_repository.dart';

class RandomTrivia {
  TriviaRepository triviaRepository;
  RandomTrivia(this.triviaRepository);

  Future<Trivia?> execute() async {
    return await triviaRepository.getRandomTrivia();
  }
}
