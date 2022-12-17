import 'package:devmovic/core/error/exception.dart';
import 'package:devmovic/core/error/failure.dart';
import 'package:devmovic/data/data_source/movies_remote_data_source.dart';
import 'package:devmovic/domain/entities/movies_entity.dart';
import 'package:devmovic/domain/repositories/base_movies_repository.dart';
import 'package:either_dart/either.dart';

import '../data_source/base_remote_datasource.dart';

class MoviesRepository implements BaseMoviesRepositories {
  BaseMoviesRemoteDataSource baseRemoteDataSource;
  MoviesRepository({
    required this.baseRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<Movies>>> getMostPopularMovies() async {
    final result = await baseRemoteDataSource.getMostPopularMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
          ServerFailure(message: failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movies>>> getNowPlayingMovies() async {
    final result = await baseRemoteDataSource.getNowPlayingMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
          ServerFailure(message: failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movies>>> getTopRatedMovies() async {
    final result = await baseRemoteDataSource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
          ServerFailure(message: failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movies>>> getUpComingMovies() async {
    final result = await baseRemoteDataSource.getUpComingMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
          ServerFailure(message: failure.errorMessageModel.statusMessage));
    }
  }
}
