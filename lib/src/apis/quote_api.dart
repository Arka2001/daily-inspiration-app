import 'package:dio/dio.dart';

class QuoteAPI {
  final dio = Dio();

  final String _baseUrl = "https://zenquotes.io/api";

  Future<Map<String, dynamic>> getDaily() async {
    String getDailyQuote = "${_baseUrl}/today";

    var response = await dio.get(getDailyQuote);

    print(response.data);

    return response.data;
  }

  Future<Map<String, dynamic>> getRandom() async {
    String getRandomQuote = "${_baseUrl}/random";

    var response = await dio.get(getRandomQuote);

    print(response.data);

    return response.data;
  }
}
