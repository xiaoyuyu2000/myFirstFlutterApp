import 'package:flutter/material.dart';
import 'quote.dart';

// Widget QuoteCard
class QuoteCard extends StatelessWidget {

  final Quote3 quote;
  const QuoteCard({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      color: Colors.green[50],
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              '~ ${quote.text}',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 8.0,),
            Text(
              quote.author,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[900],
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}