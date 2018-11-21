import 'package:flutter/material.dart';

class MyApp5 extends StatelessWidget {

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
  String _stars = '';
  int _star = 2;

  @override
  void initState() {
    _message = 'ok.';
    super.initState();
  }

  // インスタンス生成時に必ず呼び出される
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('My App'),

        leading: BackButton(
          color: Colors.white,
        ),

        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.android),
            tooltip: 'add star...',
            onPressed: iconPressedA,
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            tooltip: 'subtract star...',
            onPressed: iconPressedB,
          )
        ],

        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(30.0),
          child: Center(
            child: Text(_stars,
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),

      body: Center(
        child: Text(_message,
          style: const TextStyle(fontSize: 28.0),
        ),
      ),
    );
  }

  void iconPressedA() {
    _message = 'tap "android."';
    _star++;
    update();
  }

  void iconPressedB() {
    _message = 'tap "favarite."';
    _star--;
    update();
  }

  void update() {
    _star = _star < 0 ? 0 : _star > 5 ? 5 : _star;
    setState(() {
      _stars = '★★★★★☆☆☆☆☆'.substring(5 - _star, 5 - _star + 5);
      _message = _message + '[$_star]';
    });
  }
}