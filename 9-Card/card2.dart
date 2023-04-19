import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}


