import 'package:flutter/material.dart';

class QuoteOptionCard extends StatelessWidget {
  final String title;
  final Function() onTap;
  const QuoteOptionCard({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade500,
      child: ListTile(
        title: Text(title, style: Theme.of(context).textTheme.bodyText1),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
        onTap: onTap,
      ),
    );
  }
}
