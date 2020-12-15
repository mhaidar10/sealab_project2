import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//aplikasi zikir dengan stateful widget
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  void tekantombol() {
    setState(() {
      number = number + 1;
    });
  }

  void tekan() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Zikir"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                number.toString(),
                style: TextStyle(fontSize: 10 + number.toDouble()),
              ),
              RaisedButton(
                child: Text(
                  "tambah zikir",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: tekantombol,
                color: Colors.blue,
              ),
              RaisedButton(
                child: Text(
                  "Reset",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
                onPressed: tekan,
              )
            ],
          ),
        ),
      ),
    );
  }
}
