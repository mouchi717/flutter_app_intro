import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui' as ui;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text('App Name'),
      ),
      body: Center(
        child: MyRenderBoxWidget(),
      ),
    );
  }
}

class MyRenderBoxWidget extends SingleChildRenderObjectWidget {

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _MyRenderBox();
  }
}

class _MyRenderBox extends RenderBox {

  @override
  bool hitTest(HitTestResult result, { @required Offset position }) {
    return true;
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    Canvas c = context.canvas;
    int dx = offset.dx.toInt();
    int dy = offset.dy.toInt();

    ui.ParagraphBuilder builder = ui.ParagraphBuilder(
        ui.ParagraphStyle(textDirection: TextDirection.ltr),
      )
      ..pushStyle(ui.TextStyle(color: Colors.red, fontSize: 48.0))
      ..addText('Hello! ')
      ..pushStyle(ui.TextStyle(color: Colors.blue[700], fontSize: 30.0))
      ..addText('This is a sample of paragraph text. ')
      ..pushStyle(ui.TextStyle(color: Colors.blue[200], fontSize: 30.0))
      ..addText('You can draw MULTI-FONT text!');

    ui.Paragraph paragraph = builder.build()
      ..layout(ui.ParagraphConstraints(width: 300.0));

    Offset off = Offset(dx + 50.0, dy + 50.0);
    c.drawParagraph(paragraph, off);
  }
}