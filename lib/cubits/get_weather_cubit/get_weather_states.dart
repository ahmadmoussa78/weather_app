import 'package:weather_app/models/weather_model.dart';

class WeatherState {}

class WeatherIntialState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final WeatherModel weatherModel;

  WeatherLoadedState(this.weatherModel);
}

class WeatherFaliureState extends WeatherState {
  final String errMessage;

  WeatherFaliureState(this.errMessage);
}
