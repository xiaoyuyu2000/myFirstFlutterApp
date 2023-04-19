import 'package:flutter/material.dart';
import 'quote.dart';

// Widget QuoteCard
class QuoteCard extends StatelessWidget {

  final Quote3 quote;
  final VoidCallback delete;
  const QuoteCard({required this.quote, required this.delete});

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
            const SizedBox(height: 8.0,),
            ElevatedButton.icon(
              onPressed: delete,
              label: Text('delete quote', style: TextStyle(color: Colors.grey[600]),),
              icon: Icon(Icons.delete_forever),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[100],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
