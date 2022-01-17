import 'package:clean_demo_doc/features/tdd_test/domain/entities/trivia.dart';

class TriviaModel extends Trivia {
  TriviaModel({required String text, required num number})
      : super(text: text, number: number);

  factory TriviaModel.fromJson(Map<String, dynamic> json) => TriviaModel(
        text: json["text"],
        number: json["number"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "number": number,
      };
}
