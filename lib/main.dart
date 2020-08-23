import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BGChanger',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random Background'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var colors = [
    Colors.amber,
    Colors.red,
    Colors.black,
    Colors.pink,
    Colors.purple,
    Colors.blue,
    Colors.orange
  ];
  var currentcolor = Colors.white;

  setRandomColor() {
    /*method for color change*/
    var rnd = Random().nextInt(colors.length);
    setState(() {
      /*setchange always needs to call*/
      currentcolor = colors[rnd];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currentcolor,
      child: ButtonTheme(
        minWidth: 200.0,
        height: 80.0,
        child: Center(
          child: RaisedButton(
            color: Colors.black,
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: Text(
              'Change it',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            onPressed: setRandomColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
      ),
    );
  }
}
