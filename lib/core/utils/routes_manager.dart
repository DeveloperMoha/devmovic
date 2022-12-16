import 'package:devmovic/modules/home/home_view.dart';
import 'package:devmovic/modules/splash/splash_view.dart';
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
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.movieRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case Routes.serieRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case Routes.animeRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case Routes.actorRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      default:
        return MaterialPageRoute(builder: (_) => SplashScreen());
    }
  }
}
