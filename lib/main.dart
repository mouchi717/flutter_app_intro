import 'package:flutter/material.dart';
//import 'package:flutter_app_intro/3-1/main.dart';
//import 'package:flutter_app_intro/3-2/main.dart';
//import 'package:flutter_app_intro/3-3/main.dart';
//import 'package:flutter_app_intro/3-4/main.dart';
//import 'package:flutter_app_intro/3-5/main.dart';
//import 'package:flutter_app_intro/3-6/main.dart';
//import 'package:flutter_app_intro/3-7/main.dart';
//import 'package:flutter_app_intro/3-8/main.dart';
//import 'package:flutter_app_intro/3-9/main.dart';
//import 'package:flutter_app_intro/3-10/main.dart';
//import 'package:flutter_app_intro/3-11/main.dart';
//import 'package:flutter_app_intro/3-12/main.dart';
//import 'package:flutter_app_intro/3-13/main.dart';
//import 'package:flutter_app_intro/3-14/main.dart';
import 'package:flutter_app_intro/3-15/main.dart';

//void main() => runApp(new MyApp());
//void main() => runApp(new MyApp31());
//void main() => runApp(new MyApp32());
//void main() => runApp(new MyApp33());
//void main() => runApp(new MyApp34());
//void main() => runApp(new MyApp35());
//void main() => runApp(new MyApp36());
//void main() => runApp(new MyApp37());
//void main() => runApp(new MyApp38());
//void main() => runApp(new MyApp39());
//void main() => runApp(new MyApp310());
//void main() => runApp(new MyApp311());
//void main() => runApp(new MyApp312());
//void main() => runApp(new MyApp313());
//void main() => runApp(new MyApp314());
void main() => runApp(new MyApp315());

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

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // インスタンス生成時に必ず呼び出される
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Text(
              'You have pushed the button this many times.'
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
