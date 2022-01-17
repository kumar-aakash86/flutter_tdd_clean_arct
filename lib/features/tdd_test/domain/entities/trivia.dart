import 'package:equatable/equatable.dart';

class Trivia extends Equatable {
  final num number;
  final String text;

  const Trivia({required this.number, required this.text});

  @override
  List<Object?> get props => [number, text];
}
