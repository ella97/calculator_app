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
        debugShowCheckedModeBanner: false);
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String displayString = '0';
  Widget createRow(String title1, String title2, String title3, String title4) {
    return Expanded(
      child: Row(
        children: <Widget>[
          createButton(title1),
          createButton(title2),
          createButton(title3),
          createButton(title4),
        ],
      ),
    );
  }

  Widget createButton(String title) {
    return Expanded(
      child: ButtonTheme(
        height: double.infinity,
        child: OutlineButton(
          onPressed:() => {},
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
          highlightedBorderColor: Colors.black,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Color.fromARGB(10, 0, 0, 0),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Align(
                      alignment: FractionalOffset.bottomRight,
                      child: Text(
                        displayString,
                        style: TextStyle(fontSize: 80),
                      )),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  createRow('+', '-', '*', '/'),
                  createRow('7', '8', '9', '0'),
                  createRow('4', '5', '6', 'CLEAR'),
                  createRow('1', '2', '3', '='),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
