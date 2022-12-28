import 'package:equatable/equatable.dart';

abstract class MoviesStates extends Equatable {}

class IntialMoviesState extends MoviesStates {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class LoadingMovies extends MoviesStates {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class LoadedMovies extends MoviesStates {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class ErrorLoadedMovies extends MoviesStates {
  @override
  List<Object?> get props => throw UnimplementedError();
}
