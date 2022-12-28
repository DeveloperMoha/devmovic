class AppConstants {
  static const String appLang = "en-US";

  //==========================================General Api Constants
  static const String movDbPubApiPubKey = "4465d70d61df508a8174a5b9b045c93c";
  static const String baseMovieUrl = "https://api.themoviedb.org/3";
  static const String movDbBaseImgUrl = "https://image.tmdb.org/t/p/w500";

  static String getMovDbImage(String path) {
    return "$movDbBaseImgUrl$path";
  }

  static const String baseAnimeUrl = "https://api.simkl.com/anime";

  //Url structure: {domain}{prefix}{image_url}{suffix}{extension}
  // _w.jpg for 600x338 dim
  // _c	.jpg for 170x250(256)	 dim
  static const String animeImgUrl = "https://simkl.in/posters/";

  static String getAnimePoster(String animePosterUrl) {
    return "${animeImgUrl}${animeImgUrl}_c.jpg";
  }

  static String getAnimeCover(String animeCoverUrl) {
    return "${animeImgUrl}${animeCoverUrl}_w.jpg";
  }

  //==========================================Movies Constants
  static const String getTopRatedMoviesUrl =
      "$baseMovieUrl/movie/top_rated?api_key=$movDbPubApiPubKey&language=$appLang&page=1";
  static const String getPopularMoviesUrl =
      "$baseMovieUrl/movie/popular?api_key=$movDbPubApiPubKey&language=$appLang&page=1";
  static const String getNowPlayingMoviesUrl =
      "$baseMovieUrl/movie/now_playing?api_key=$movDbPubApiPubKey&language=$appLang&page=1";
  static const String getUpComingMoviesUrl =
      "$baseMovieUrl/movie/upcoming?api_key=$movDbPubApiPubKey&language=$appLang&page=1";

  //==========================================Series Constants
  static const String getTopRatedSeriesUrl =
      "$baseMovieUrl/tv/top_rated?api_key=$movDbPubApiPubKey&language=$appLang&page=6";

  static const String getPopularSeriesUrl =
      "$baseMovieUrl/tv/popular?api_key=$movDbPubApiPubKey&language=$appLang&page=5";

  static const String getOnTheAirSeriesUrl =
      "$baseMovieUrl/tv/on_the_air?api_key=$movDbPubApiPubKey&language=$appLang&page=3";

  static const String getAiringTodaySeriesUrl =
      "$baseMovieUrl/tv/airing_today?api_key=$movDbPubApiPubKey&language=$appLang&page=1";

  //==========================================Anime Constants

  static const String getPremieresAnime =
      "https://api.simkl.com/anime/premieres/";
  static const String getBestAnime = "https://api.simkl.com/anime/best/";
  static const String getAirAnime = "https://api.simkl.com/anime/airing/";

  //==========================================Trends Constants
  /**
   * TODO : -specify your links
   */
  //static const String gettrends = "";
}
