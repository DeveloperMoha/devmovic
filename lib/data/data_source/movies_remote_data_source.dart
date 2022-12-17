import 'package:devmovic/core/error/exception.dart';
import 'package:devmovic/core/network/error_msg_model.dart';
import 'package:devmovic/core/utils/constants_manager.dart';
import 'package:devmovic/data/models/movies_model.dart';
import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';

import '../../core/error/failure.dart';
import 'base_remote_datasource.dart';

class MoviesRemoteDatasource implements BaseMoviesRemoteDataSource {
  @override
  Future<List<MoviesModel>> getMostPopularMovies() async {
    print("most poopoular");
    var response = await Dio().get(AppConstants.getPopularMoviesUrl);
    //print(response.data);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data["results"] as List)
          .map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MoviesModel>> getNowPlayingMovies() async {
    print("noooow plaaaaying");
    var response = await Dio().get(AppConstants.getNowPlayingMoviesUrl);
    //print(response.data);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data["results"] as List)
          .map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MoviesModel>> getTopRatedMovies() async {
    print("top raaaated");
    var response = await Dio().get(AppConstants.getTopRatedMoviesUrl);
    //print(response.data);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data["results"] as List)
          .map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MoviesModel>> getUpComingMovies() async {
    print("upcooooooooooooming");
    var response = await Dio().get(AppConstants.getUpComingMoviesUrl);
    //print(response.data);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data["results"] as List)
          .map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
