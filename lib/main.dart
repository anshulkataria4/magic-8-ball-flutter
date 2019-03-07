import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int number=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask me Anything'),
        backgroundColor: Colors.blue[300],
      ),
      body: Center(
        child: Container(
          child: FlatButton(
              onPressed: (){
                setState(() {
                  number= Random().nextInt(5)+1;
                  print('pressed + $number');
                });
              },
              child: Image.asset('images/ball$number.png')),
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
