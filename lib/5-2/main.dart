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
  int _index = 0;

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
      ),

      body: Center(
        child: Text(_message,
          style: const TextStyle(fontSize: 28.0),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('bottom'),
            icon: Icon(Icons.android),
          ),
          BottomNavigationBarItem(
            title: Text('bottom'),
            icon: Icon(Icons.favorite),
          ),
        ],
        onTap: tapBottomIcon,
      ),
    );
  }

  void tapBottomIcon(int value) {
    var items = ['Android', 'Heart'];
    setState(() {
      _index = value;
      _message = 'you tapped: "' + items[_index] + '".';
    });
  }
}