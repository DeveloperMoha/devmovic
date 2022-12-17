class AppConstants {
  static const String appLang = "en-US";

  static const String movDbPubApiPubKey = "4465d70d61df508a8174a5b9b045c93c";
  static const String baseMovieUrl = "https://api.themoviedb.org/3";
  static const String movDbBaseImgUrl = "https://image.tmdb.org/t/p/w500";

  static const String getTopRatedMoviesUrl =
      "$baseMovieUrl/movie/top_rated?api_key=$movDbPubApiPubKey&language=$appLang&page=1";
  static const String getPopularMoviesUrl =
      "$baseMovieUrl/movie/popular?api_key=$movDbPubApiPubKey&language=$appLang&page=1";
  static const String getNowPlayingMoviesUrl =
      "$baseMovieUrl/movie/now_playing?api_key=$movDbPubApiPubKey&language=$appLang&page=1";
  static const String getUpComingMoviesUrl =
      "$baseMovieUrl/movie/upcoming?api_key=$movDbPubApiPubKey&language=$appLang&page=1";

  static const String getTopRatedSeriesUrl =
      "$baseMovieUrl/tv/top_rated?api_key=$movDbPubApiPubKey&language=$appLang&page=6";

  static const String getPopularSeriesUrl =
      "$baseMovieUrl/tv/popular?api_key=$movDbPubApiPubKey&language=$appLang&page=5";

  static const String getOnTheAirSeriesUrl =
      "$baseMovieUrl/tv/on_the_air?api_key=$movDbPubApiPubKey&language=$appLang&page=3";

  static const String getAiringTodaySeriesUrl =
      "$baseMovieUrl/tv/airing_today?api_key=$movDbPubApiPubKey&language=$appLang&page=1";
}
