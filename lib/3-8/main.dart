import 'package:flutter/material.dart';

class MyApp38 extends StatelessWidget {

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
    return new Scaffold(
      appBar: AppBar(
        title: Text('App Name'),
      ),
      body:
        Stack(
          children: _stackData,
        ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.android),
          onPressed: fabPressed
      ),
    );
  }

  void fabPressed() {
    setState(() {
      _stackData.insert(0, _stackData.removeLast());
    });
  }

  var _stackData = <Widget> [
    Container(
      color: Colors.red,
      width: 200.0,
      height: 200.0,
      child: Text(
        "One",
          style: TextStyle(fontSize: 32.0,
            color: const Color(0xFF000000),
            fontWeight: FontWeight.w400,
            fontFamily: "Roboto"),
      ),
    ),
    Container(
      color: Colors.green,
      width: 200.0,
      height: 200.0,
      child: Text(
        "Two",
          style: TextStyle(fontSize: 32.0,
          color: const Color(0xFF000000),
          fontWeight: FontWeight.w400,
          fontFamily: "Roboto"),
      )
    ),
    Container(
      color: Colors.blue,
      width: 200.0,
      height: 200.0,
      child: Text(
        "Three",
          style: TextStyle(fontSize: 32.0,
            color: const Color(0xFF000000),
            fontWeight: FontWeight.w400,
            fontFamily: "Roboto"),
      ),
    ),
  ];
}