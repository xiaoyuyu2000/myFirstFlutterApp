import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: RrCard(),
));

class RrCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RR ID Card'),
      ),
    );
  }
}
