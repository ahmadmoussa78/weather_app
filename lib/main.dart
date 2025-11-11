import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            return MaterialApp(
              theme: ThemeData(
                useMaterial3: false,
                primarySwatch: getThemeColor(
                  BlocProvider.of<GetWeatherCubit>(
                    context,
                  ).weatherModel?.weatherCondition,
                ),
              ),
              debugShowCheckedModeBanner: false,
              home: const HomeView(),
            );
          },
        ),
      ),
    );
  }
}

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }
  final cond = condition.toLowerCase();
  if (cond.contains("sunny") || cond.contains("clear")) {
    return Colors.amber;
  } else if (cond.contains("partly cloudy")) {
    return Colors.lightBlue;
  } else if (cond.contains("cloudy") || cond.contains("overcast")) {
    return Colors.blueGrey;
  } else if (cond.contains("mist") || cond.contains("fog")) {
    return Colors.grey;
  } else if (cond.contains("drizzle") || cond.contains("light rain")) {
    return Colors.teal;
  } else if (cond.contains("moderate rain")) {
    return Colors.indigo;
  } else if (cond.contains("heavy rain") || cond.contains("torrential")) {
    return Colors.blue;
  } else if (cond.contains("snow")) {
    return Colors.lightBlue;
  } else if (cond.contains("sleet")) {
    return Colors.cyan;
  } else if (cond.contains("ice")) {
    return Colors.cyan;
  } else if (cond.contains("blizzard")) {
    return Colors.indigo;
  } else if (cond.contains("thunder")) {
    return Colors.deepPurple;
  } else {
    return Colors.cyan;
  }
}
