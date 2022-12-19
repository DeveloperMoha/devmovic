// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:devmovic/core/error/exception.dart';
import 'package:either_dart/src/either.dart';

import 'package:devmovic/core/error/failure.dart';
import 'package:devmovic/data/data_source/base_remote_datasource.dart';
import 'package:devmovic/domain/entities/anime_entity.dart';
import 'package:devmovic/domain/repositories/base_anime_repository.dart';

class AnimeRepository implements BaseAnimeRepository {
  BaseAnimeRemoteDataSource baseAnimeRemoteDataSource;
  AnimeRepository({
    required this.baseAnimeRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<Anime>>> getAiringAnime() async {
    final result = await baseAnimeRemoteDataSource.getAiringAnime();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
          ServerFailure(message: failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Anime>>> getBestAnime() async {
    final result = await baseAnimeRemoteDataSource.getBestAnime();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
          ServerFailure(message: failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Anime>>> getPremieresAnime() async {
    final result = await baseAnimeRemoteDataSource.getPremieresAnime();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
          ServerFailure(message: failure.errorMessageModel.statusMessage));
    }
  }
}
