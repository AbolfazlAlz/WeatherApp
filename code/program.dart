import 'WeatherHelper.dart';

main(List<String> args) {
  final weather = WeatherHelper("927029a9c3dcad812caa919dbeff17e2");
  Future<dynamic> data = weather.getWeather();
  data.then((value) => {
        print("Weather in Shahroud: " +
            value['main']['temp'].toString() +
            " Kelvin")
      });
}
