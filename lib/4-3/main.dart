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
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[

          Text(
            _message,
              style: TextStyle(fontSize:32.0,
                color: Color(0xFF000000),
                fontWeight: FontWeight.w400,
                fontFamily: "Roboto"),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
          ),

          RaisedButton(
            onPressed: buttonPressed,
            padding: EdgeInsets.all(10.0),
            child: Text(
              "tap me!",
                style: TextStyle(fontSize: 28.0,
                color: const Color(0xFF000000),
                fontWeight: FontWeight.w400,
                fontFamily: "Roboto"),
            ),
          )
        ],
      ),
    );
  }

  void buttonPressed() {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog (
        title: Text("Hello!!"),
        content: Text("This is sample."),
        actions: <Widget>[
          FlatButton(
              onPressed: () => Navigator.pop<String>(context, 'Cancel'),
              child: Text("Cancel"),
          ),
          FlatButton(
              onPressed: () => Navigator.pop<String>(context, 'OK'),
              child: Text("OK"),
          ),
        ],
      ),
    ).then<void>((value) => resultAlert(value));
  }

  void resultAlert(String value) {
    setState(() {
      _message = 'selected: $value';
    });
  }
}