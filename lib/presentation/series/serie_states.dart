import 'package:equatable/equatable.dart';

abstract class SeriesStates extends Equatable {}

class IntialSeriesState extends SeriesStates {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class LoadingSeries extends SeriesStates {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class LoadedSeries extends SeriesStates {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class ErrorLoadedSeries extends SeriesStates {
  @override
  List<Object?> get props => throw UnimplementedError();
}
