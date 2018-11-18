import 'package:flutter/material.dart';

class MyApp4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Generated App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String _message;
  double _value = 0.0;

  @override
  void initState() {
    _message = 'ok.';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Name'),
      ),
      body:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[

            Text(
              _message,
                style: TextStyle(fontSize:32.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto"),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
            ),

            Slider(
              onChanged: sliderChanged,
              min: 0.0,
              max: 100.0,
              divisions: 20,
              value: _value,
            )
          ],
      ),
    );
  }

  void sliderChanged(double value) {
    setState(() {
      _value = value.floorToDouble();
      _message = 'set value: $_value';
    });
  }
}