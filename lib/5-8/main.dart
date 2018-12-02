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

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  List _items = <Widget>[];
  String _message;
  int _tapped = 0;

  @override
  void initState() {
    super.initState();
    _message = 'ok.';
    for (var i = 0; i < 5; i++) {
      var item = ListTile(
        leading: const Icon(Icons.android),
        title: Text('No, $i'),
        onTap: () {
          _tapped = i;
          tapItem();
        },
      );
      _items.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('My App'),
      ),

      body: Center(
        child: Text(
          _message,
          style: TextStyle(
            fontSize: 32.0,
          ),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: _items,
        ),
      ),
    );
  }

  void tapItem() {
    Navigator.pop(context);
    setState(() {
      _message = 'tapped:[$_tapped]';
    });
  }
}