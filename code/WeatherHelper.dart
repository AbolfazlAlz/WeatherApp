import 'dart:convert';
import 'dart:io';

class WeatherHelper {
  String apiKey;
  String _apiAddress = "http://api.openweathermap.org/data/2.5/weather";
  WeatherHelper(String this.apiKey) {}

  dynamic getWeather() async {
    final address = "$_apiAddress?appid=$apiKey&q=shahrud,%20ir";
    var request = await HttpClient().getUrl(Uri.parse(address));
    var response = await request.close();

    await for (var contents in response.transform(Utf8Decoder())) {
      return json.decode(contents);
    }
  }
}
