import 'package:clean_demo_doc/features/tdd_test/data/datasources/remote_data_source.dart';
import 'package:clean_demo_doc/features/tdd_test/domain/entities/trivia.dart';
import 'package:clean_demo_doc/features/tdd_test/domain/repositories/trivia_repository.dart';

class TriviaRepositoryImpl extends TriviaRepository {
  RemoteDataSource remoteDataSource;
  TriviaRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Trivia>? getRandomTrivia() async {
    try {
      final remoteTrivia = await remoteDataSource.getRandomTrivia();
      return remoteTrivia;
    } catch (err) {
      rethrow;
    }
  }
}
