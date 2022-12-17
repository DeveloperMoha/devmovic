// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:either_dart/src/either.dart';

import 'package:devmovic/core/error/failure.dart';
import 'package:devmovic/data/data_source/base_remote_datasource.dart';
import 'package:devmovic/domain/entities/series_entity.dart';
import 'package:devmovic/domain/repositories/base_series_repository.dart';

import '../../core/error/exception.dart';

class SeriesRepository implements BaseSeriesRepository {
  BaseSeriesRemoteDataSource baseSeriesRemoteDataSource;
  SeriesRepository({
    required this.baseSeriesRemoteDataSource,
  });
  @override
  Future<Either<Failure, List<Series>>> getAiringTodaySeries() async {
    final result = await baseSeriesRemoteDataSource.getAiringTodaySeries();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
          ServerFailure(message: failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Series>>> getOnTheAirSeries() async {
    print("==============================Repo=1");
    final result = await baseSeriesRemoteDataSource.getOnTheAirSeries();
    try {
      print("==============================Repo=2");
      return Right(result);
    } on ServerException catch (failure) {
      print("==============================Repo=3");
      return Left(
          ServerFailure(message: failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Series>>> getPopularSeries() async {
    final result = await baseSeriesRemoteDataSource.getPopularSeries();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
          ServerFailure(message: failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Series>>> getTopRatedSeries() async {
    final result = await baseSeriesRemoteDataSource.getTopRatedSeries();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(
          ServerFailure(message: failure.errorMessageModel.statusMessage));
    }
  }
}
