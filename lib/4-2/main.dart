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
  String _selected = 'One';

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

            DropdownButton<String>(
              onChanged: (String value) => popupSelected(value),
              value: _selected,
              style: TextStyle(
                color: Colors.black,
                fontSize: 28.0,
                fontWeight: FontWeight.w400,
                fontFamily: "Roboto"),

              items: <DropdownMenuItem<String>>[

                DropdownMenuItem<String>(value: 'One',
                  child: const Text('One')),

                DropdownMenuItem<String>(value: 'Two',
                  child: const Text('Two')),

                DropdownMenuItem<String>(value: 'Three',
                  child: const Text('Three')),

              ],
            ),
          ],
      ),
    );
  }

  void popupSelected(String value) {
    setState(() {
      _selected = value;
      _message = 'select: $_selected';
    });
  }
}