import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Ask me anything",
          ),
        ),
        body: ball(),
      ),
    );
  }
}

var pic = 1;

void changePic() {
  pic = Random().nextInt(5) + 1;
}

class ball extends StatefulWidget {
  @override
  _ballState createState() => _ballState();
}

class _ballState extends State<ball> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            changePic();
          });
        },
        child: Image.asset("images/ball$pic.png"),
      ),
    );
  }
}
