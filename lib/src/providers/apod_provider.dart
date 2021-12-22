import 'package:flutter/services.dart';

import '../apis/apis.dart';
import '../models/models.dart';

class ApodProvider {
  final ApodAPI _apodApi = ApodAPI();

  Future<APOD> getAPOD() async {
    try {
      Map<String, dynamic> body = await _apodApi.getDailyImage();

      if (body.isNotEmpty) {
        APOD res = APOD(
          date: body["date"],
          explanation: body["explanation"],
          hdurl: body["hdurl"],
          mediaType: body["mediaType"],
          serviceVersion: body["serviceVersion"],
          title: body["title"],
          url: body["url"],
        );

        print(res);

        return res;
      }
    } on PlatformException catch (err) {
      print(err);
    } catch (exception) {
      print(exception.toString());
    }

    return APOD(
      date: "",
      explanation: '',
      hdurl: '',
      mediaType: '',
      serviceVersion: '',
      title: '',
      url: '',
    );
  }
}
