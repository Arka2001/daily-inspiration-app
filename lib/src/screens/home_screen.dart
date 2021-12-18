import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
          child: ListView.builder(itemBuilder: (ctx, index) {
            return Container();
          }),
        ),
      ),
    );
  }
}
