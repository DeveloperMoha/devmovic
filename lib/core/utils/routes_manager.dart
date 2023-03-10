import 'package:devmovic/presentation/anime/anime_screen.dart';
import 'package:devmovic/presentation/home/home_view.dart';
import 'package:devmovic/presentation/movies/movie_details.dart';
import 'package:devmovic/presentation/movies/movies_screen.dart';
import 'package:devmovic/presentation/series/serie_screen.dart';
import 'package:devmovic/presentation/splash/splash_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = "/splash";
  static const String homeRoute = "/";
  static const String movieRoute = "/movie";
  static const String movieDetailsRoute = "/movie/details";
  static const String serieRoute = "/serie";
  static const String serieDetailsRoute = "/serie/details";
  static const String animeRoute = "/anime";
  static const String actorRoute = "/actor";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.movieRoute:
        return MaterialPageRoute(builder: (_) => const MoviesScreen());

      case Routes.serieRoute:
        return MaterialPageRoute(builder: (_) => const SeriesScreen());
      case Routes.animeRoute:
        return MaterialPageRoute(builder: (_) => const AnimeScreen());
      case Routes.actorRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      default:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}
