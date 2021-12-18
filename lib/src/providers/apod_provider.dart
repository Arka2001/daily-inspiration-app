import 'package:daily_inspirations/src/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../apis/apis.dart';

class ApodProvider {
  final ApodAPI _apodApi = ApodAPI();

  Future<APOD?> getAPOD({required BuildContext context}) async {
    try {
      Map<String, dynamic> body = await this._apodApi.getDailyImage();

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

        return res;
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Something Went Wrong")));
      }
    } on PlatformException catch (err) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(err.message ?? "Something went wrong")));
    } catch (exception) {
      print(exception.toString());
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Something went wrong")));
    }

    return null;
  }
}
