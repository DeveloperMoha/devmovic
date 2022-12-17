import 'package:devmovic/core/utils/constants_manager.dart';
import 'package:devmovic/data/data_source/base_remote_datasource.dart';
import 'package:devmovic/data/models/series_model.dart';
import 'package:dio/dio.dart';

import '../../core/error/exception.dart';
import '../../core/network/error_msg_model.dart';

class SeriesRemoteDataSource implements BaseSeriesRemoteDataSource {
  @override
  Future<List<SeriesModel>> getAiringTodaySeries() async {
    print("most getAiringTodaySeries");
    var response = await Dio().get(AppConstants.getAiringTodaySeriesUrl);
    //print(response.data);
    if (response.statusCode == 200) {
      return List<SeriesModel>.from((response.data["results"] as List)
          .map((e) => SeriesModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<SeriesModel>> getOnTheAirSeries() async {
    print("most getOnTheAirSeries");
    //print("link is : ${AppConstants.getOnTheAirSeriesUrl}");
    var response = await Dio().get(AppConstants.getOnTheAirSeriesUrl);
    // print(response.data);
    if (response.statusCode == 200) {
      return List<SeriesModel>.from((response.data["results"] as List)
          .map((e) => SeriesModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<SeriesModel>> getPopularSeries() async {
    print("most getPopularSeries");
    var response = await Dio().get(AppConstants.getPopularSeriesUrl);
    //print(response.data);
    if (response.statusCode == 200) {
      return List<SeriesModel>.from((response.data["results"] as List)
          .map((e) => SeriesModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<SeriesModel>> getTopRatedSeries() async {
    print("most getTopRatedSeries");
    var response = await Dio().get(AppConstants.getTopRatedSeriesUrl);
    //print(response.data);
    if (response.statusCode == 200) {
      return List<SeriesModel>.from((response.data["results"] as List)
          .map((e) => SeriesModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
