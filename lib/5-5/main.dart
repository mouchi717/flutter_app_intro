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
  int _index;

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

      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 130.0,
              child: const Center(
                child: Text('One',
                    style: const TextStyle(fontSize: 32.0)),
              ),
            ),
            Container(
              color: Colors.white,
              height: 130.0,
              child: const Center(
                child: Text('Two',
                    style: const TextStyle(fontSize: 32.0)),
              ),
            ),
            Container(
              color: Colors.blue,
              height: 130.0,
              child: const Center(
                child: Text('Three',
                    style: const TextStyle(fontSize: 32.0)),
              ),
            ),
            Container(
              color: Colors.white,
              height: 130.0,
              child: const Center(
                child: Text('Four',
                    style: const TextStyle(fontSize: 32.0)),
              ),
            ),
            Container(
              color: Colors.blue,
              height: 130.0,
              child: const Center(
                child: Text('Five',
                    style: const TextStyle(fontSize: 32.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}