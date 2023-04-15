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
        child: ElevatedButton.icon(
            onPressed: () {
              print('You clicked me :)');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green[700],
            ),
            icon: Icon(
              Icons.home,
              color: Colors.black,
              size: 30.0,
            ),
            label: Text(
              'Click Me!',
              style: TextStyle(
                color: Colors.lightBlue[100],
                fontSize: 20.0,
              ),
            )
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Colors.green[700],
        child: Text('CLICK'),
      ),
    );
  }
}
