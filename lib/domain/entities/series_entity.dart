import 'package:equatable/equatable.dart';

class Series extends Equatable {
  final String imagePath;
  final String firstAirDate;
  final List<int> genreId;
  final List<String> originCountry;
  final int serieId;
  final String serieName;
  final String serieOverview;
  final String seriePosterPath;
  final int voteCount;
  const Series({
    required this.imagePath,
    required this.firstAirDate,
    required this.genreId,
    required this.originCountry,
    required this.serieId,
    required this.serieName,
    required this.serieOverview,
    required this.seriePosterPath,
    required this.voteCount,
  });

  @override
  List<Object> get props => [
        imagePath,
        firstAirDate,
        genreId,
        originCountry,
        serieId,
        serieName,
        serieOverview,
        seriePosterPath,
        voteCount
      ];
}
