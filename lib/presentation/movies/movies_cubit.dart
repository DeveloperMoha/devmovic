import 'package:devmovic/data/data_source/base_remote_datasource.dart';
import 'package:devmovic/data/data_source/movies_remote_data_source.dart';
import 'package:devmovic/data/repository_impl/movie_repository.dart';
import 'package:devmovic/domain/repositories/base_movies_repository.dart';
import 'package:devmovic/presentation/movies/movies_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/movies_entity.dart';
import '../../domain/use_cases/movies_usecases.dart';

class MoviesCubit extends Cubit<MoviesStates> {
  MoviesCubit(super.initialState) {
    //getTopRatedMovies();
    //getpopularMovies();
    //getnowPlayingMovies();
    //getupComingMovies();
    getAllMovies();
  }

  List<Movies> topRatedMoviesList = [];
  List<Movies> popularMoviesList = [];
  List<Movies> nowPlayingMoviesList = [];
  List<Movies> upComingMoviesList = [];

  void getTopRatedMovies() async {
    emit(LoadingMovies());
    BaseMoviesRemoteDataSource baseRemoteDataSource = MoviesRemoteDatasource();
    BaseMoviesRepositories baseMoviesRepositories =
        MoviesRepository(baseRemoteDataSource: baseRemoteDataSource);
    final topRated =
        await MoviesUseCases(baseMoviesRepositories: baseMoviesRepositories)
            .getTopRatedMoviesExecution();

    topRated.fold((left) {
      print("leffffffffffffffffffffffft");
      emit(ErrorLoadedMovies());
    }, (right) {
      topRatedMoviesList.clear();
      print("righttttttttttttttttt");
      for (Movies movie in right) {
        topRatedMoviesList.add(
          Movies(
              adult: movie.adult,
              imagePath: movie.imagePath,
              genreId: movie.genreId,
              movieId: movie.movieId,
              movieName: movie.movieName,
              movieOverview: movie.movieOverview,
              moviePosterPath: movie.moviePosterPath,
              voteCount: movie.voteCount),
        );
      }
      emit(LoadedMovies());
    });
  }

  void getpopularMovies() async {
    emit(LoadingMovies());
    BaseMoviesRemoteDataSource baseRemoteDataSource = MoviesRemoteDatasource();
    BaseMoviesRepositories baseMoviesRepositories =
        MoviesRepository(baseRemoteDataSource: baseRemoteDataSource);
    final popular =
        await MoviesUseCases(baseMoviesRepositories: baseMoviesRepositories)
            .getMostPopularMoviesExecution();

    popular.fold((left) {
      print("leffffffffffffffffffffffft");
      emit(ErrorLoadedMovies());
    }, (right) {
      popularMoviesList.clear();
      print("righttttttttttttttttt");
      for (Movies movie in right) {
        popularMoviesList.add(
          Movies(
              adult: movie.adult,
              imagePath: movie.imagePath,
              genreId: movie.genreId,
              movieId: movie.movieId,
              movieName: movie.movieName,
              movieOverview: movie.movieOverview,
              moviePosterPath: movie.moviePosterPath,
              voteCount: movie.voteCount),
        );
      }
      emit(LoadedMovies());
    });
  }

  void getnowPlayingMovies() async {
    emit(LoadingMovies());
    BaseMoviesRemoteDataSource baseRemoteDataSource = MoviesRemoteDatasource();
    BaseMoviesRepositories baseMoviesRepositories =
        MoviesRepository(baseRemoteDataSource: baseRemoteDataSource);
    final nowPlaying =
        await MoviesUseCases(baseMoviesRepositories: baseMoviesRepositories)
            .getNowPlayingMoviesExecution();

    nowPlaying.fold((left) {
      print("leffffffffffffffffffffffft");
      emit(ErrorLoadedMovies());
    }, (right) {
      nowPlayingMoviesList.clear();
      print("righttttttttttttttttt");
      for (Movies movie in right) {
        nowPlayingMoviesList.add(
          Movies(
              adult: movie.adult,
              imagePath: movie.imagePath,
              genreId: movie.genreId,
              movieId: movie.movieId,
              movieName: movie.movieName,
              movieOverview: movie.movieOverview,
              moviePosterPath: movie.moviePosterPath,
              voteCount: movie.voteCount),
        );
      }
      emit(LoadedMovies());
    });
  }

  void getupComingMovies() async {
    emit(LoadingMovies());
    BaseMoviesRemoteDataSource baseRemoteDataSource = MoviesRemoteDatasource();
    BaseMoviesRepositories baseMoviesRepositories =
        MoviesRepository(baseRemoteDataSource: baseRemoteDataSource);
    final upComing =
        await MoviesUseCases(baseMoviesRepositories: baseMoviesRepositories)
            .getUpComingMoviesExecution();

    upComing.fold((left) {
      print("leffffffffffffffffffffffft");
      emit(ErrorLoadedMovies());
    }, (right) {
      upComingMoviesList.clear();
      print("righttttttttttttttttt");
      for (Movies movie in right) {
        upComingMoviesList.add(
          Movies(
              adult: movie.adult,
              imagePath: movie.imagePath,
              genreId: movie.genreId,
              movieId: movie.movieId,
              movieName: movie.movieName,
              movieOverview: movie.movieOverview,
              moviePosterPath: movie.moviePosterPath,
              voteCount: movie.voteCount),
        );
      }
      emit(LoadedMovies());
    });
  }

  void getAllMovies() async {
    emit(LoadingMovies());
    BaseMoviesRemoteDataSource baseRemoteDataSource = MoviesRemoteDatasource();
    BaseMoviesRepositories baseMoviesRepositories =
        MoviesRepository(baseRemoteDataSource: baseRemoteDataSource);
    final topRated =
        await MoviesUseCases(baseMoviesRepositories: baseMoviesRepositories)
            .getTopRatedMoviesExecution();

    topRated.fold((left) {
      print("leffffffffffffffffffffffft");
      emit(ErrorLoadedMovies());
    }, (right) {
      topRatedMoviesList.clear();
      print("righttttttttttttttttt");
      for (Movies movie in right) {
        topRatedMoviesList.add(
          Movies(
              adult: movie.adult,
              imagePath: movie.imagePath,
              genreId: movie.genreId,
              movieId: movie.movieId,
              movieName: movie.movieName,
              movieOverview: movie.movieOverview,
              moviePosterPath: movie.moviePosterPath,
              voteCount: movie.voteCount),
        );
      }
    });

    final popular =
        await MoviesUseCases(baseMoviesRepositories: baseMoviesRepositories)
            .getMostPopularMoviesExecution();

    popular.fold((left) {
      print("leffffffffffffffffffffffft");
      emit(ErrorLoadedMovies());
    }, (right) {
      popularMoviesList.clear();
      print("righttttttttttttttttt");
      for (Movies movie in right) {
        popularMoviesList.add(
          Movies(
              adult: movie.adult,
              imagePath: movie.imagePath,
              genreId: movie.genreId,
              movieId: movie.movieId,
              movieName: movie.movieName,
              movieOverview: movie.movieOverview,
              moviePosterPath: movie.moviePosterPath,
              voteCount: movie.voteCount),
        );
      }
    });

    final nowPlaying =
        await MoviesUseCases(baseMoviesRepositories: baseMoviesRepositories)
            .getNowPlayingMoviesExecution();

    nowPlaying.fold((left) {
      print("leffffffffffffffffffffffft");
      emit(ErrorLoadedMovies());
    }, (right) {
      nowPlayingMoviesList.clear();
      print("righttttttttttttttttt");
      for (Movies movie in right) {
        nowPlayingMoviesList.add(
          Movies(
              adult: movie.adult,
              imagePath: movie.imagePath,
              genreId: movie.genreId,
              movieId: movie.movieId,
              movieName: movie.movieName,
              movieOverview: movie.movieOverview,
              moviePosterPath: movie.moviePosterPath,
              voteCount: movie.voteCount),
        );
      }
    });

    final upComing =
        await MoviesUseCases(baseMoviesRepositories: baseMoviesRepositories)
            .getUpComingMoviesExecution();

    upComing.fold((left) {
      print("leffffffffffffffffffffffft");
      emit(ErrorLoadedMovies());
    }, (right) {
      upComingMoviesList.clear();
      print("righttttttttttttttttt");
      for (Movies movie in right) {
        upComingMoviesList.add(
          Movies(
              adult: movie.adult,
              imagePath: movie.imagePath,
              genreId: movie.genreId,
              movieId: movie.movieId,
              movieName: movie.movieName,
              movieOverview: movie.movieOverview,
              moviePosterPath: movie.moviePosterPath,
              voteCount: movie.voteCount),
        );
      }
    });

    emit(LoadedMovies());
  }
}
