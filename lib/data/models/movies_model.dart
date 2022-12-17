import 'package:devmovic/domain/entities/movies_entity.dart';

class MoviesModel extends Movies {
  MoviesModel(
      {required super.adult,
      required super.imagePath,
      required super.genreId,
      required super.movieId,
      required super.movieName,
      required super.movieOverview,
      required super.moviePosterPath,
      required super.voteCount});

  factory MoviesModel.fromJson(Map<String, dynamic> jsonObj) {
    return MoviesModel(
      adult: jsonObj["adult"],
      imagePath: jsonObj["backdrop_path"],
      genreId: List<int>.from(jsonObj["genre_ids"].map((e) => e)),
      movieId: jsonObj["id"],
      movieName: jsonObj["original_title"],
      movieOverview: jsonObj["overview"],
      moviePosterPath: jsonObj["poster_path"],
      voteCount: jsonObj["vote_count"],
    );
  }
}
