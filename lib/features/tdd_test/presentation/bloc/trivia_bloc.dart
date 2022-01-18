import 'package:clean_demo_doc/features/tdd_test/domain/usecases/random_trivia.dart';
import 'package:clean_demo_doc/features/tdd_test/presentation/bloc/trivia_event.dart';
import 'package:clean_demo_doc/features/tdd_test/presentation/bloc/trivia_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TriviaBloc extends Bloc<TriviaEvent, TriviaState> {
  RandomTrivia randomTrivia;

  // //For flutter_bloc v7.2.0 & above
  TriviaBloc({required this.randomTrivia}) : super(Initial()) {
    on<GetRandomTrivia>((event, emit) async {
      emit(Loading());
      try {
        final result = await randomTrivia.execute();
        emit(Loaded(result));
      } on Exception catch (err) {
        emit(Error(err));
      }
    });
  }

  // For flutter_bloc below v7.2.0
  // TriviaBloc({required this.randomTrivia}) : super(Initial());
  // @override
  // Stream<TriviaState> mapEventToState(TriviaEvent event) async* {
  //   if (event is GetRandomTrivia) {
  //     yield Loading();
  //     try {
  //       final result = await randomTrivia.execute();
  //       yield Loaded(result);
  //     } on Exception catch (err) {
  //       yield Error(err);
  //     }
  //   }
  // }
}
