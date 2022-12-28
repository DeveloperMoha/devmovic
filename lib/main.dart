import 'package:devmovic/core/utils/routes_manager.dart';
import 'package:devmovic/data/data_source/anime_remote_datasource.dart';
import 'package:devmovic/data/data_source/movies_remote_data_source.dart';
import 'package:devmovic/data/data_source/series_remote_data_source.dart';
import 'package:devmovic/data/repository_impl/anime_repository.dart';
import 'package:devmovic/data/repository_impl/movie_repository.dart';
import 'package:devmovic/data/repository_impl/series_repository.dart';
import 'package:devmovic/domain/entities/anime_entity.dart';
import 'package:devmovic/domain/entities/movies_entity.dart';
import 'package:devmovic/domain/entities/series_entity.dart';
import 'package:devmovic/domain/repositories/base_anime_repository.dart';
import 'package:devmovic/domain/repositories/base_movies_repository.dart';
import 'package:devmovic/domain/repositories/base_series_repository.dart';
import 'package:devmovic/domain/use_cases/anime_usecases.dart';
import 'package:devmovic/domain/use_cases/movies_usecases.dart';
import 'package:devmovic/domain/use_cases/series_usecases.dart';
import 'package:flutter/material.dart';

import 'data/data_source/base_remote_datasource.dart';

void main() {
  //print("=============================================main");

  //getData3();

  runApp(MyApp());
}

//late List<Movies> myPopMovies;
/*
void getData1() async {
  myPopMovies = [];
  BaseMoviesRemoteDataSource baseRemoteDataSource = MoviesRemoteDatasource();
  BaseMoviesRepositories baseMoviesRepositories =
      MoviesRepository(baseRemoteDataSource: baseRemoteDataSource);
  final moha =
      await MoviesUseCases(baseMoviesRepositories: baseMoviesRepositories)
          .getTopRatedMoviesExecution();

  moha.fold((left) {
    return left;
  }, (right) {
    myPopMovies.clear();
    for (Movies movie in right) {
      myPopMovies.add(Movies(
          adult: movie.adult,
          imagePath: movie.imagePath,
          genreId: movie.genreId,
          movieId: movie.movieId,
          movieName: movie.movieName,
          movieOverview: movie.movieOverview,
          moviePosterPath: movie.moviePosterPath,
          voteCount: 10));
      //print(movie.movieName);
    }
  });
}
*/
/*
void getData2() async {
  myPopSeries = [];

  BaseSeriesRemoteDataSource baseSeriesRemoteDataSource =
      SeriesRemoteDataSource();

  BaseSeriesRepository baseSeriesRepository =
      SeriesRepository(baseSeriesRemoteDataSource: baseSeriesRemoteDataSource);

  final moha = await SeriesUseCases(baseSeriesRepository: baseSeriesRepository)
      .getTopRatedSeriesExecution();
  print("teeeeeeeeeeeeeeeeeest in 4");

  moha.fold((left) {
    print(left.message.toString());
    return left;
  }, (right) {
    myPopSeries.clear();
    for (Series serie in right) {
      print("teeeeeeeeeeeeeeeeeest in Right");
      print(
          "Serie name is ${serie.serieName}   ,, and first date is :  ${serie.imagePath}");
      myPopSeries.add(
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
}
*/
/*
void getData3() async {
  BaseAnimeRemoteDataSource baseAnimeRemoteDataSource = AnimeDataSource();
  BaseAnimeRepository baseAnimeRepository =
      AnimeRepository(baseAnimeRemoteDataSource: baseAnimeRemoteDataSource);
  final moha = await AnimeUseCases(baseAnimeRepository: baseAnimeRepository)
      .getPremieresAnimeExecute();
  moha.fold((left) {
    return left;
  }, (right) {
    for (Anime anime in right) {
      print(
          "Anime name is ${anime.title}   ,, and first date is :  ${anime.year}");
    }
  });
}
*/
class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.serieRoute,
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}
