import 'package:devmovic/domain/entities/series_entity.dart';
import 'package:either_dart/either.dart';

import '../../core/error/failure.dart';

abstract class BaseSeriesRepository {
  Future<Either<Failure, List<Series>>> getPopularSeries();
  Future<Either<Failure, List<Series>>> getTopRatedSeries();
  Future<Either<Failure, List<Series>>> getOnTheAirSeries();
  Future<Either<Failure, List<Series>>> getAiringTodaySeries();
}
