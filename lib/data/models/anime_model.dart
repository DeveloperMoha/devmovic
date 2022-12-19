import 'package:devmovic/domain/entities/anime_entity.dart';

class AnimeModel extends Anime {
  AnimeModel(
      {required super.title, required super.year, required super.poster});

  factory AnimeModel.fromJson(Map<String, dynamic> jsonObj) {
    return AnimeModel(
        title: jsonObj["title"],
        year: jsonObj["year"],
        poster: jsonObj["poster"]);
  }
}
