import 'package:equatable/equatable.dart';

class Movies extends Equatable {
  final bool adult;
  final String imagePath;
  final List<int> genreId;
  final int movieId;
  final String movieName;
  final String movieOverview;
  final String moviePosterPath;
  final int voteCount;
  const Movies({
    required this.adult,
    required this.imagePath,
    required this.genreId,
    required this.movieId,
    required this.movieName,
    required this.movieOverview,
    required this.moviePosterPath,
    required this.voteCount,
  });

  @override
  List<Object> get props => [
        adult,
        imagePath,
        genreId,
        movieId,
        movieName,
        movieOverview,
        moviePosterPath,
        voteCount
      ];
}
