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
      imageName: ImageManager.moviePoster1,
      cardTitle: StringManager.homeCardMovies),
  HomeCard(
      imageName: ImageManager.seriePoster,
      cardTitle: StringManager.homeCardSeries),
  HomeCard(
      imageName: ImageManager.animePoster,
      cardTitle: StringManager.homeCardAnime),
  HomeCard(
      imageName: ImageManager.trendPoster1,
      cardTitle: StringManager.homeCardTrendingMovies),
  HomeCard(
      imageName: ImageManager.trendPoster2,
      cardTitle: StringManager.homeCardTrendingSeries),
  HomeCard(
      imageName: ImageManager.trendPoster3,
      cardTitle: StringManager.homeCardTrendingPerson),
];
