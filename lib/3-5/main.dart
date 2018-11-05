import 'package:flutter/material.dart';

class MyApp35 extends StatelessWidget {

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
      appBar: new AppBar(
        title: new Text('App Name'),
      ),
      body:
        Container(
          child:
            Text(
              "Hello Flutter!",
                style: TextStyle(fontSize: 32.0,
                color: const Color(0xFF000000),
                fontWeight: FontWeight.w700,
                fontFamily: "Roboto"),
            ),
          padding: const EdgeInsets.all(10.0),
          alignment: const Alignment(0.0, -0.5),
        ),
      );
  }
}