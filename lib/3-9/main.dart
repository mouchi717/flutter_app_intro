import 'package:flutter/material.dart';

class MyApp39 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Name'),
      ),
      body:
        GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          padding: const EdgeInsets.all(10.0),
          children: _gridData,
        ),
    );
  }

  var _gridData = <Widget>[
    Container(
      color: Colors.red,
      child: Text(
        "One",
          style: TextStyle(fontSize: 32.0,
            fontWeight: FontWeight.w400,
            fontFamily: "Roboto"),
      ),
    ),

    Container(
      color: Colors.green,
      child: Text(
        "Two",
        style: TextStyle(fontSize: 32.0,
            fontWeight: FontWeight.w400,
            fontFamily: "Roboto"),
      ),
    ),

    Container(
      color: Colors.blue,
      child: Text(
        "Three",
        style: TextStyle(fontSize: 32.0,
            fontWeight: FontWeight.w400,
            fontFamily: "Roboto"),
      ),
    ),

    Container(
      color: Colors.yellow,
      child: Text(
        "Four",
        style: TextStyle(fontSize: 32.0,
            fontWeight: FontWeight.w400,
            fontFamily: "Roboto"),
      ),
    ),

    Container(
      color: Colors.purple,
      child: Text(
        "Five",
        style: TextStyle(fontSize: 32.0,
            fontWeight: FontWeight.w400,
            fontFamily: "Roboto"),
      ),
    ),
  ];
}