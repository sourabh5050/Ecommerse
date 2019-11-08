import 'package:flutter/material.dart';

class Ironing extends StatefulWidget {
  @override
  _IroningState createState() => _IroningState();
}

class _IroningState extends State<Ironing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        elevation: 0.1,
        title: Text('Ironing'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        actions: <Widget>[

        ],
    ),
    );
  }
}
