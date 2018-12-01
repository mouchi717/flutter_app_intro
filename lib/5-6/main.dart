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

  List _items = <Widget>[];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 10; i++) {
      var item = Container(
        color: i.isOdd ? Colors.blue : Colors.white,
        height: 100.0,
        child: Center(
          child: Text(
            'No, $i',
            style: const TextStyle(fontSize: 32.0),
          ),
        ),
      );
      _items.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Sliver App Bar'),
              background: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.network(
                    'https://raw.githubusercontent.com/flutter/website/master/src/_includes/code/layout/lakes/images/lake.jpg',
                    fit: BoxFit.fill,
                  )
                ],
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.android),
                tooltip: 'icon button',
                onPressed: () { print('pressed.'); }),
            ],
          ),

          SliverList(
            delegate: SliverChildListDelegate(_items),
          ),
        ],
      ),
    );
  }
}