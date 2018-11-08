import 'package:flutter/material.dart';

class MyApp314 extends StatelessWidget {

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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 200.0,
              height: 100.0,
              child: Container(
                color: Colors.yellow,
                child: Text(
                  "First item",
                    style: TextStyle(fontSize:32.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"),
                ),
              ),
            ),

            new SizedBox(
              width: 100.0,
              height: 200.0,
              child: Container(
                color: Colors.red,
                child: Text(
                  "Second item",
                    style: TextStyle(fontSize:32.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"),
                ),
              ),
            )
          ]
      ),
    );
  }
}