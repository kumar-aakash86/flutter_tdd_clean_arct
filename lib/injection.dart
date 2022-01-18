import 'package:clean_demo_doc/features/tdd_test/data/datasources/remote_data_source.dart';
import 'package:clean_demo_doc/features/tdd_test/data/repositories/trivia_repository_impl.dart';
import 'package:clean_demo_doc/features/tdd_test/domain/repositories/trivia_repository.dart';
import 'package:clean_demo_doc/features/tdd_test/domain/usecases/random_trivia.dart';
import 'package:get_it/get_it.dart';

import 'features/tdd_test/presentation/bloc/trivia_bloc.dart';
import 'package:http/http.dart' as http;

final inj = GetIt.instance;

Future<void> init() async {
  inj.registerFactory<TriviaBloc>(() => TriviaBloc(randomTrivia: inj()));
  inj.registerLazySingleton(() => RandomTrivia(inj()));
  inj.registerLazySingleton<TriviaRepository>(
      () => TriviaRepositoryImpl(remoteDataSource: inj()));
  inj.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(client: inj()));
  inj.registerLazySingleton(() => http.Client());
}
