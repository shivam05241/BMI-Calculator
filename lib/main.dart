import 'package:flutter/material.dart';
import 'homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        backgroundColor: Color(0xFF0A0E21),
      ),
    );
  }
}
