import 'package:flutter/material.dart';
import 'screens/input_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.blueGrey[900],
          scaffoldBackgroundColor: Colors.blueGrey[900]
      ),
      home: BMIPage(),
    );
  }
}

