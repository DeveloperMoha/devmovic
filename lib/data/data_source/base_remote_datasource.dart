import 'package:devmovic/data/models/series_model.dart';

import '../models/movies_model.dart';

abstract class BaseMoviesRemoteDataSource {
  Future<List<MoviesModel>> getTopRatedMovies();
  Future<List<MoviesModel>> getMostPopularMovies();
  Future<List<MoviesModel>> getNowPlayingMovies();
  Future<List<MoviesModel>> getUpComingMovies();
}

abstract class BaseSeriesRemoteDataSource {
  Future<List<SeriesModel>> getPopularSeries();
  Future<List<SeriesModel>> getTopRatedSeries();
  Future<List<SeriesModel>> getOnTheAirSeries();
  Future<List<SeriesModel>> getAiringTodaySeries();
}
