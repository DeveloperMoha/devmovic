import 'package:devmovic/core/error/failure.dart';
import 'package:devmovic/domain/entities/movies_entity.dart';
import 'package:either_dart/either.dart';

abstract class BaseMoviesRepositories {
  Future<Either<Failure, List<Movies>>> getTopRatedMovies();
  Future<Either<Failure, List<Movies>>> getMostPopularMovies();
  Future<Either<Failure, List<Movies>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movies>>> getUpComingMovies();
}
