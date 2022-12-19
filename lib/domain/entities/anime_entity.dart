// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Anime extends Equatable {
  final String title;
  final int year;
  final String poster;
  const Anime({
    required this.title,
    required this.year,
    required this.poster,
  });

  @override
  List<Object?> get props => [title, year, poster];
}
