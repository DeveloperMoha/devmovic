import 'package:devmovic/domain/entities/series_entity.dart';

class SeriesModel extends Series {
  SeriesModel(
      {required super.imagePath,
      required super.firstAirDate,
      required super.genreId,
      required super.originCountry,
      required super.serieId,
      required super.serieName,
      required super.serieOverview,
      required super.seriePosterPath,
      required super.voteCount});

  factory SeriesModel.fromJson(Map<String, dynamic> jsonObj) {
    return SeriesModel(
      imagePath: jsonObj["backdrop_path"],
      firstAirDate: jsonObj["first_air_date"],
      genreId: List<int>.from(jsonObj["genre_ids"].map((e) => e)),
      originCountry: List<String>.from(jsonObj["origin_country"].map((e) => e)),
      serieId: jsonObj["id"],
      serieName: jsonObj["name"],
      serieOverview: jsonObj["overview"],
      seriePosterPath: jsonObj["poster_path"],
      voteCount: jsonObj["vote_count"],
    );
  }
}
