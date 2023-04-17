import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: RrCard(),
));

class RrCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      appBar: AppBar(
        title: Text('RR ID Card'),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 0.0,
      ),
    );
  }
}
