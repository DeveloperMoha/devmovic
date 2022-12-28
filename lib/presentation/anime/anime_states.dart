import 'package:equatable/equatable.dart';

abstract class AnimeStates extends Equatable {}

class IntialAnimeState extends AnimeStates {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class LoadingAnime extends AnimeStates {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class LoadedAnime extends AnimeStates {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class ErrorLoadedAnime extends AnimeStates {
  @override
  List<Object?> get props => throw UnimplementedError();
}
