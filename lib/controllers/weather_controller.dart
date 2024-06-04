<<<<<<< HEAD
=======

>>>>>>> 1434b16df9ff7067d8946a164ed713c244a374eb
import 'package:weather/services/weather_http_service.dart';

class WeatherController {
  final weatherServices = WeatherServices();

  Future<dynamic> getInformation(dynamic box) async {
    dynamic weather = await weatherServices.getInfotmation(box);

    return weather;
  }
}
