import 'dart:ui';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'info.dart';

void main() => runApp(MyApp());

Color w = Colors.white;
Color b = Colors.black;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      title: "Flutter App",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        accentColor: Colors.pinkAccent,
        //fontFamily: 'Quicksand',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _datePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "AppBar 02",
          style: TextStyle(
            color: b,
            // fontFamily: 'Quicksand',
          ),
        ),
      ),
      body: Center(
        child: RaisedButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: Text("Date Picker",
              style: TextStyle(color: Colors.white, fontSize: 30)),
          color: Colors.black,
          onPressed: _datePicker,
        ),
      ),
    );
  }
}
