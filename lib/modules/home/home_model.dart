// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../core/utils/images_manager.dart';
import '../../core/utils/string_manager.dart';

class HomeCard {
  String imageName;
  String CardTitle;
  HomeCard({
    required this.imageName,
    required this.CardTitle,
  });
}

List<HomeCard> homeCardList = [
  HomeCard(
      imageName: ImageManager.moviePoster,
      CardTitle: StringManager.HomeCardMovies),
  HomeCard(
      imageName: ImageManager.seriePoster,
      CardTitle: StringManager.HomeCardSeries),
  HomeCard(
      imageName: ImageManager.animePoster,
      CardTitle: StringManager.HomeCardAnime),
  HomeCard(
      imageName: ImageManager.actorPoster,
      CardTitle: StringManager.HomeCardActors),
];
