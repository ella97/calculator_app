import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Simple Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget createRow(String title1, String title2, String title3, String title4) {
    return Row(
      children: <Widget>[
        createButton(title1),
        createButton(title2),
        createButton(title3),
        createButton(title4),
      ],
    );
  }

  Widget createButton(String title) {
    return ButtonTheme(
      child: OutlineButton(
        onPressed: null,
        child: Text(title),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Text('0'),
            ),
            Column(
              children: <Widget>[
                createRow('+', '-', '*', '/'),
                createRow('7', '8', '9', '0'),
                createRow('4', '5', '6', 'CLEAR'),
                createRow('1', '2', '3', '='),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
