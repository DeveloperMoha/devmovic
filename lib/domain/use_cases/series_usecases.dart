import 'package:devmovic/domain/entities/series_entity.dart';
import 'package:devmovic/domain/repositories/base_series_repository.dart';
import 'package:either_dart/either.dart';

import '../../core/error/failure.dart';

class SeriesUseCases {
  BaseSeriesRepository baseSeriesRepository;
  SeriesUseCases({
    required this.baseSeriesRepository,
  });

  Future<Either<Failure, List<Series>>> getAiringTodaySeriesExecution() async {
    return await baseSeriesRepository.getAiringTodaySeries();
  }

  Future<Either<Failure, List<Series>>> getOnTheAirSeriesExecution() async {
    return await baseSeriesRepository.getOnTheAirSeries();
  }

  Future<Either<Failure, List<Series>>> getPopularSeriesExecution() async {
    return await baseSeriesRepository.getPopularSeries();
  }

  Future<Either<Failure, List<Series>>> getTopRatedSeriesExecution() async {
    return await baseSeriesRepository.getTopRatedSeries();
  }
}
