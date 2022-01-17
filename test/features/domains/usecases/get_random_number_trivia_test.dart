import 'package:clean_demo_doc/features/tdd_test/domain/entities/trivia.dart';
import 'package:clean_demo_doc/features/tdd_test/domain/repositories/trivia_repository.dart';
import 'package:clean_demo_doc/features/tdd_test/domain/usecases/random_trivia.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockTriviaRepository extends Mock implements TriviaRepository {}

void main() {
  late RandomTrivia usecase;
  late MockTriviaRepository mockTriviaRepository;

  setUp(() {
    mockTriviaRepository = MockTriviaRepository();
    usecase = RandomTrivia(mockTriviaRepository);
  });

  const tNumberTrivia = Trivia(number: 0, text: "No data for this");

  test("random number trivia is working", () async {
    when(mockTriviaRepository.getRandomTrivia())
        .thenAnswer((_) async => tNumberTrivia);

    final result = await usecase.execute();
    expect(result, tNumberTrivia);
    verify(mockTriviaRepository.getRandomTrivia());
    verifyNoMoreInteractions(mockTriviaRepository);
  });
}
