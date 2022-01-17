import 'dart:convert';

import 'package:clean_demo_doc/features/tdd_test/data/models/trivia_model.dart';
import 'package:clean_demo_doc/features/tdd_test/domain/entities/trivia.dart';
import 'package:http/http.dart' as http;

abstract class RemoteDataSource {
  Future<Trivia> getRandomTrivia();
}

class RemoteDataSourceImpl extends RemoteDataSource {
  http.Client client;

  RemoteDataSourceImpl({required this.client});

  @override
  Future<Trivia> getRandomTrivia() async {
    final response = await client.get(
        Uri.parse("http://numbersapi.com/random?json"),
        headers: {'Content-type': 'application/json'});

    if (response.statusCode == 200) {
      return TriviaModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("No data found");
    }
  }
}
