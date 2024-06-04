import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather/models/citys.dart';
import 'package:weather/models/weather.dart';

class WeatherServices {
  Future<dynamic> getInfotmation(dynamic box) async {
    Uri url = box is String
        ? Uri.parse(
            "https://api.openweathermap.org/data/2.5/forecast?q=$box&appid=353124e7e27814f76fb4c773a6a9ac82")
        : Uri.parse(
            "https://api.openweathermap.org/data/2.5/forecast?lat=${box[0]}&lon=${box[1]}&limit={limit}&appid=353124e7e27814f76fb4c773a6a9ac82");
    List<Weather> loadedWeather = [];
    try {
      final response = await http.get(url);
      final data = jsonDecode(response.body);
      selectedCity = data['city']['name'];
<<<<<<< HEAD
      saveCountry(selectedCity);
=======
      saveLocation(selectedCity);
>>>>>>> 1434b16df9ff7067d8946a164ed713c244a374eb
      data['list'].forEach((value) {
        loadedWeather.add(Weather.fromJson(value));
      });
    } catch (e) {
      return "Shaxar topilmadi";
    }
    print(loadedWeather);
    return loadedWeather;
  }
}

<<<<<<< HEAD
 Future<void> saveCountry(String country) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('country', country);
  }
=======
Future<void> saveLocation(String location) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('location', location);
}
>>>>>>> 1434b16df9ff7067d8946a164ed713c244a374eb
