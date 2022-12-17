// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../core/utils/images_manager.dart';
import '../../core/utils/string_manager.dart';

class HomeCard {
  String imageName;
  String cardTitle;
  HomeCard({
    required this.imageName,
    required this.cardTitle,
  });
}

List<HomeCard> homeCardList = [
  HomeCard(
      imageName: ImageManager.moviePoster,
      cardTitle: StringManager.homeCardMovies),
  HomeCard(
      imageName: ImageManager.seriePoster,
      cardTitle: StringManager.homeCardSeries),
  HomeCard(
      imageName: ImageManager.animePoster,
      cardTitle: StringManager.homeCardAnime),
  HomeCard(
      imageName: ImageManager.actorPoster,
      cardTitle: StringManager.homeCardActors),
];
