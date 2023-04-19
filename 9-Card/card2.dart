import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(const MaterialApp(
  home: MyCard(),
));

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {

  List<Quote3> quotes = [
    Quote3(text: 'Don\'t let other people tell who you are,', author: 'J.Trashy'),
    Quote3(text: 'Be yourself; everyone else is already taken.', author: 'A.Brushy'),
    Quote3(text: 'The truth is rarely pure and never simple.', author: 'C.Dryly')
  ];

  Widget quoteTemplate(quote) {
    return QuoteCard(quote: quote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Cards'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.green[200],
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}

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
