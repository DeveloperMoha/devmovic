import 'package:devmovic/data/data_source/base_remote_datasource.dart';
import 'package:devmovic/data/models/anime_model.dart';
import 'package:dio/dio.dart';

import '../../core/error/exception.dart';
import '../../core/network/error_msg_model.dart';
import '../../core/utils/constants_manager.dart';

class AnimeDataSource implements BaseAnimeRemoteDataSource {
  @override
  Future<List<AnimeModel>> getAiringAnime() async {
    print("most getAiringAnime");
    var response = await Dio().get(AppConstants.getAirAnime);
    //print(response.data);
    if (response.statusCode == 200) {
      return List<AnimeModel>.from(
          (response.data as List).map((e) => AnimeModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<AnimeModel>> getBestAnime() async {
    print("most getBestAnime");
    var response = await Dio().get(AppConstants.getBestAnime);
    //print(response.data);
    if (response.statusCode == 200) {
      return List<AnimeModel>.from(
          (response.data as List).map((e) => AnimeModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<AnimeModel>> getPremieresAnime() async {
    print("most getPremieresAnime");
    var response = await Dio().get(AppConstants.getPremieresAnime);
    //print(response.data);
    if (response.statusCode == 200) {
      return List<AnimeModel>.from(
          (response.data as List).map((e) => AnimeModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
