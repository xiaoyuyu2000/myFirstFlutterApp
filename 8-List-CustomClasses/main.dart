import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  // List<String> quotes = [
  //   'Don\'t let other people tell who you are,',
  //   'Be yourself; everyone else is already taken.',
  //   'The truth is rarely pure and never simple.'
  // ];

  List<Quote3> quotes = [
    Quote3(text: 'Don\'t let other people tell who you are,', author: 'J.Tryhy'),
    Quote3(text: 'Be yourself; everyone else is already taken.', author: 'A.Bryhy'),
    Quote3(text: 'The truth is rarely pure and never simple.', author: 'C.Dryhy')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
      ),
    );
  }
}
