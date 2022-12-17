import 'package:devmovic/domain/repositories/base_movies_repository.dart';
import 'package:either_dart/either.dart';

import '../../core/error/failure.dart';
import '../entities/movies_entity.dart';

class MoviesUseCases {
  final BaseMoviesRepositories baseMoviesRepositories;
  MoviesUseCases({
    required this.baseMoviesRepositories,
  });

  Future<Either<Failure, List<Movies>>> getTopRatedMoviesExecution() async {
    return await baseMoviesRepositories.getTopRatedMovies();
  }

  Future<Either<Failure, List<Movies>>> getMostPopularMoviesExecution() async {
    return await baseMoviesRepositories.getMostPopularMovies();
  }

  Future<Either<Failure, List<Movies>>> getNowPlayingMoviesExecution() async {
    return await baseMoviesRepositories.getNowPlayingMovies();
  }

  Future<Either<Failure, List<Movies>>> getUpComingMoviesExecution() async {
    return await baseMoviesRepositories.getUpComingMovies();
  }
}
