import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApodAPI {
  final dio = Dio();

  final String _baseUrl = "https://api.nasa.gov/planetary/apod?api_key=";

  Future<Map<String, dynamic>> getDailyImage() async {
    String getDailyImage = "${_baseUrl}${dotenv.env['API_KEY']}";

    var response = await dio.get(getDailyImage);

    print(response.data);

    return response.data;
  }

  Future<Map<String, dynamic>> getRandomImage() async {
    String getRandomImage = "${_baseUrl}&count=5";

    var response = await dio.get(getRandomImage);

    print(response.data);

    return response.data;
  }
}
