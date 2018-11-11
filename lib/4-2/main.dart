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
  String _selected = 'A';

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
        Center(
        child:
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              Text(
                _message,
                  style: TextStyle(fontSize:32.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto"),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Radio<String>(
                    value: 'A',
                    groupValue: _selected,
                    onChanged: (String value) => checkChanged(value),
                  ),

                  Text(
                    "radio A",
                      style: TextStyle(fontSize:28.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto"),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Radio<String>(
                    value: 'B',
                    groupValue: _selected,
                    onChanged: (String value) => checkChanged(value),
                  ),

                  Text(
                    "radio B",
                    style: TextStyle(fontSize:28.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto"),
                  ),
                ],
              )
            ]
        ),
      ),
    );
  }

  void checkChanged(String value) {
    setState(() {
      _selected = value;
      _message = 'select: $_selected';
    });
  }
}