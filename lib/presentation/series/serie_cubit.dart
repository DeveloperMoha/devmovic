import 'package:devmovic/data/data_source/base_remote_datasource.dart';
import 'package:devmovic/data/data_source/series_remote_data_source.dart';
import 'package:devmovic/data/repository_impl/series_repository.dart';
import 'package:devmovic/domain/repositories/base_series_repository.dart';
import 'package:devmovic/domain/use_cases/series_usecases.dart';
import 'package:devmovic/presentation/series/serie_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/series_entity.dart';

class SeriesCubit extends Cubit<SeriesStates> {
  SeriesCubit(super.initialState) {
    getAllSeries();
  }

  List<Series> topRatedSeries = [];
  List<Series> popularSeries = [];
  List<Series> onAirSeries = [];
  List<Series> airingTodaySeries = [];

  void getTopRatedSeries() async {
    BaseSeriesRemoteDataSource baseSeriesRemoteDataSource =
        SeriesRemoteDataSource();
    BaseSeriesRepository baseSeriesRepository = SeriesRepository(
        baseSeriesRemoteDataSource: baseSeriesRemoteDataSource);
    final topRated =
        await SeriesUseCases(baseSeriesRepository: baseSeriesRepository)
            .getTopRatedSeriesExecution();

    topRated.fold((left) {
      print("leffffffffffffffffffffffft");
      emit(ErrorLoadedSeries());
    }, (right) {
      topRatedSeries.clear();
      print("righttttttttttttttttt");
      for (Series serie in right) {
        topRatedSeries.add(
          Series(
              imagePath: serie.imagePath,
              firstAirDate: serie.firstAirDate,
              genreId: serie.genreId,
              originCountry: serie.originCountry,
              serieId: serie.serieId,
              serieName: serie.serieName,
              serieOverview: serie.serieOverview,
              seriePosterPath: serie.seriePosterPath,
              voteCount: serie.voteCount),
        );
      }
      emit(LoadedSeries());
    });
  }

  void getPopularSeries() async {
    BaseSeriesRemoteDataSource baseSeriesRemoteDataSource =
        SeriesRemoteDataSource();
    BaseSeriesRepository baseSeriesRepository = SeriesRepository(
        baseSeriesRemoteDataSource: baseSeriesRemoteDataSource);
    final popular =
        await SeriesUseCases(baseSeriesRepository: baseSeriesRepository)
            .getPopularSeriesExecution();

    popular.fold((left) {
      print("leffffffffffffffffffffffft");
      emit(ErrorLoadedSeries());
    }, (right) {
      popularSeries.clear();
      print("righttttttttttttttttt");
      for (Series serie in right) {
        popularSeries.add(
          Series(
              imagePath: serie.imagePath,
              firstAirDate: serie.firstAirDate,
              genreId: serie.genreId,
              originCountry: serie.originCountry,
              serieId: serie.serieId,
              serieName: serie.serieName,
              serieOverview: serie.serieOverview,
              seriePosterPath: serie.seriePosterPath,
              voteCount: serie.voteCount),
        );
      }
      emit(LoadedSeries());
    });
  }

  void getOnAirSeries() async {
    BaseSeriesRemoteDataSource baseSeriesRemoteDataSource =
        SeriesRemoteDataSource();
    BaseSeriesRepository baseSeriesRepository = SeriesRepository(
        baseSeriesRemoteDataSource: baseSeriesRemoteDataSource);
    final onAir =
        await SeriesUseCases(baseSeriesRepository: baseSeriesRepository)
            .getOnTheAirSeriesExecution();

    onAir.fold((left) {
      print("leffffffffffffffffffffffft");
      emit(ErrorLoadedSeries());
    }, (right) {
      onAirSeries.clear();
      print("righttttttttttttttttt");
      for (Series serie in right) {
        onAirSeries.add(
          Series(
              imagePath: serie.imagePath,
              firstAirDate: serie.firstAirDate,
              genreId: serie.genreId,
              originCountry: serie.originCountry,
              serieId: serie.serieId,
              serieName: serie.serieName,
              serieOverview: serie.serieOverview,
              seriePosterPath: serie.seriePosterPath,
              voteCount: serie.voteCount),
        );
      }
      emit(LoadedSeries());
    });
  }

  void getAiringTodaySeries() async {
    BaseSeriesRemoteDataSource baseSeriesRemoteDataSource =
        SeriesRemoteDataSource();
    BaseSeriesRepository baseSeriesRepository = SeriesRepository(
        baseSeriesRemoteDataSource: baseSeriesRemoteDataSource);
    final airingToday =
        await SeriesUseCases(baseSeriesRepository: baseSeriesRepository)
            .getAiringTodaySeriesExecution();

    airingToday.fold((left) {
      print("leffffffffffffffffffffffft");
      emit(ErrorLoadedSeries());
    }, (right) {
      airingTodaySeries.clear();
      print("righttttttttttttttttt");
      for (Series serie in right) {
        airingTodaySeries.add(
          Series(
              imagePath: serie.imagePath,
              firstAirDate: serie.firstAirDate,
              genreId: serie.genreId,
              originCountry: serie.originCountry,
              serieId: serie.serieId,
              serieName: serie.serieName,
              serieOverview: serie.serieOverview,
              seriePosterPath: serie.seriePosterPath,
              voteCount: serie.voteCount),
        );
      }
      emit(LoadedSeries());
    });
  }

  void getAllSeries() async {
    BaseSeriesRemoteDataSource baseSeriesRemoteDataSource =
        SeriesRemoteDataSource();
    BaseSeriesRepository baseSeriesRepository = SeriesRepository(
        baseSeriesRemoteDataSource: baseSeriesRemoteDataSource);

    final topRated =
        await SeriesUseCases(baseSeriesRepository: baseSeriesRepository)
            .getTopRatedSeriesExecution();

    topRated.fold((left) {
      print("leffffffffffffffffffffffft");
      emit(ErrorLoadedSeries());
    }, (right) {
      topRatedSeries.clear();
      print("righttttttttttttttttt");
      for (Series serie in right) {
        topRatedSeries.add(
          Series(
              imagePath: serie.imagePath,
              firstAirDate: serie.firstAirDate,
              genreId: serie.genreId,
              originCountry: serie.originCountry,
              serieId: serie.serieId,
              serieName: serie.serieName,
              serieOverview: serie.serieOverview,
              seriePosterPath: serie.seriePosterPath,
              voteCount: serie.voteCount),
        );
      }
    });

    final popular =
        await SeriesUseCases(baseSeriesRepository: baseSeriesRepository)
            .getPopularSeriesExecution();

    popular.fold((left) {
      print("leffffffffffffffffffffffft");
      emit(ErrorLoadedSeries());
    }, (right) {
      popularSeries.clear();
      print("righttttttttttttttttt");
      for (Series serie in right) {
        popularSeries.add(
          Series(
              imagePath: serie.imagePath,
              firstAirDate: serie.firstAirDate,
              genreId: serie.genreId,
              originCountry: serie.originCountry,
              serieId: serie.serieId,
              serieName: serie.serieName,
              serieOverview: serie.serieOverview,
              seriePosterPath: serie.seriePosterPath,
              voteCount: serie.voteCount),
        );
      }
    });

    emit(LoadedSeries());
  }
}
