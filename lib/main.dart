import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: Text(
        'Hello, Flutter World!!',
        style: TextStyle(fontSize: 32.0),
      ),
    );
  }
}
