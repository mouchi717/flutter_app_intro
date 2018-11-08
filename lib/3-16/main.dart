import 'package:flutter/material.dart';

class MyApp316 extends StatelessWidget {

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
        Center(
          child:
            Card(
              margin: EdgeInsets.all(50.0),
              child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: <Widget>[
                    Text(
                      "Hello",
                        style: TextStyle(fontSize:32.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                    ),

                    Text(
                      "This is Card Layout." * 5,
                        style: TextStyle(fontSize:24.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w200,
                          fontFamily: "Roboto"),
                    )
                  ]

          ),
        ),
      ),
    );
  }
}