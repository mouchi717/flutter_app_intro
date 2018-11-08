import 'package:flutter/material.dart';

class MyApp311 extends StatelessWidget {

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
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Left',
                  style: TextStyle(fontSize: 32.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto"
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Center',
                  style: TextStyle(fontSize: 32.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Right',
                  style: TextStyle(fontSize: 32.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"
                ),
              ),
            ),
          ],
        )
    );
  }
}