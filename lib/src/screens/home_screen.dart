import 'package:daily_inspirations/src/screens/daily_quote.dart';
import 'package:daily_inspirations/src/widgets/quote_option_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    final List<String> quote_buttons = [
      "Quote of the Day",
      "Random Quotes",
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Daily Quotes',
          style: Theme.of(context).textTheme.headline4,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 250,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                QuoteOptionCard(
                  title: quote_buttons[0],
                  onTap: () => Navigator.of(context)
                      .pushNamed(DailyQuoteScreen.routeName),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
