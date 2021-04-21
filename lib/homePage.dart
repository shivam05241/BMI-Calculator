import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            flex: 3,
            child: Row(
              children: [
                CustomContainer(
                  flex: 1,
                  colour: secondryColor,
                  customChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 80,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "MALE",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF8D8E98),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomContainer(
                  flex: 1,
                  colour: secondryColor,
                  customChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.venus,
                        size: 80,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Female",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF8D8E98),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomContainer(
            colour: secondryColor,
            flex: 3,
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                CustomContainer(
                  colour: secondryColor,
                  flex: 1,
                ),
                CustomContainer(
                  colour: secondryColor,
                  flex: 1,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(top: 8),
              color: Color(0xFFEB1555),
              child: Center(child: Text("CALCULATE")),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  CustomContainer({@required this.colour, this.customChild, this.flex});
  final Color colour;
  final Widget customChild;
  int flex;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: colour,
        ),
        margin: EdgeInsets.all(8),
        child: customChild,
      ),
    );
  }
}
