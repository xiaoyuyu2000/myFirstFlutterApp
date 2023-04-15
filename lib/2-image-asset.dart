import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Love u, RR'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Image.asset('assets/3.jpg'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Colors.green[700],
        child: Text('CLICK'),
      ),
    );
  }
}
