import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color primaryColor = Color(0xFF0A0E21), secondryColor = Color(0xFF1D1E33);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Center(child: Text("BMI CALCULATOR")),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                CustomContainer(colour: secondryColor),
                CustomContainer(colour: secondryColor),
              ],
            ),
          ),
          CustomContainer(colour: secondryColor),
          Expanded(
            child: Row(
              children: [
                CustomContainer(colour: secondryColor),
                CustomContainer(colour: secondryColor),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  CustomContainer({@required this.colour});
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: colour,
        ),
        margin: EdgeInsets.all(8),
      ),
    );
  }
}
