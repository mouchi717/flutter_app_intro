import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(
          title: 'Flutterサンプルアプリ',
        )
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}): super(key: key);

  final String title;

  @override
  _MyHomePageState createState()  => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String _message;

  @override
  void initState() {
    _message = 'ok.';
    super.initState();
  }

  // _MyHomePageState(): _message = 'ok.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),

      body: Column(
        children: <Widget>[
          Text(
            _message,
            style: TextStyle(
              fontSize: 32.0,
            ),
          ),
          ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20.0),
            children: <Widget>[
              Text('First item',
                style: TextStyle(
                  fontSize: 24.0
                ),
              ),
              Text('Second item',
                style: TextStyle(
                    fontSize: 24.0
                ),
              ),
              Text('Third item',
                style: TextStyle(
                    fontSize: 24.0
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}