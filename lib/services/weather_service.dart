import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  WeatherService(this.dio);

  final String baseUrl = "http://api.weatherapi.com/v1";
  final String apiKey = "b4f02d5f0aea4bb8863125712252309";

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
        "$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1",
      );
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errMessage =
          e.response?.data["error"]["message"] ??
          "oops there was an error, try later";
      throw Exception(errMessage);
    } catch (e) {
      log(e.toString());
      throw Exception("oops there was an error, try later");
    }
  }
}
