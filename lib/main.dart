import 'package:flutter/material.dart';
import 'dart:math';

void main () {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
            child: Text('Ask me anything'),
          ),
            backgroundColor: Colors.lightBlueAccent[400],
        ),
        body: Magic8BallPage(),
      ),
    ),
  );
}

class Magic8BallPage extends StatefulWidget {
    @override
  State<Magic8BallPage> createState() => _Magic8BallPageState();
}

class _Magic8BallPageState extends State<Magic8BallPage> {
  int magicBallNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget> [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  onPressed: (){
                    setState(() {
                      magicBallNumber = Random().nextInt(18) + 1;
                    });
                  },
                  child: Image.asset('images/ball$magicBallNumber.png'),
                ),
              ))
        ],
      ),
    );
  }
}
