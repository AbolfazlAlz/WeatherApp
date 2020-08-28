import 'dart:io';

import 'WeatherHelper.dart';

main(List<String> args) {
  final weather = WeatherHelper("927029a9c3dcad812caa919dbeff17e2");
  print("Enter city name: ");
  final city = stdin.readLineSync();
  print("Enter the state name: ");
  final state = stdin.readLineSync();
  Future<dynamic> data = weather.getWeather(city, state);
  data.then((value) => {
        print("Temperture in $city: " +
            value['main']['temp'].toString() +
            " Kelvin")
      });
}
