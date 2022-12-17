import 'package:devmovic/presentation/home/home_view.dart';
import 'package:devmovic/presentation/splash/splash_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = "/";
  static const String homeRoute = "/home";
  static const String movieRoute = "/movie";
  static const String serieRoute = "/serie";
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
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.serieRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.animeRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.actorRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      default:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}
