import 'package:daily_inspirations/src/models/models.dart';
import 'package:daily_inspirations/src/providers/apod_provider.dart';
import 'package:flutter/material.dart';

class DailyQuoteScreen extends StatefulWidget {
  const DailyQuoteScreen({Key? key}) : super(key: key);

  static const routeName = '/daily';

  @override
  State<DailyQuoteScreen> createState() => _DailyQuoteScreenState();
}

class _DailyQuoteScreenState extends State<DailyQuoteScreen> {
  static final apodProvider = ApodProvider();

  Future<APOD> imageData = apodProvider.getAPOD();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: FutureBuilder<APOD>(
        future: imageData,
        builder: (context, AsyncSnapshot<APOD> snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Container(
                width: 250,
                height: 250,
                child: Image.network(snapshot.data!.url),
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Container(
                width: 250,
                height: 250,
                child: Center(
                  child: Text(
                    "Something went wrong",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Colors.red,
                        ),
                  ),
                ),
              ),
            );
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
