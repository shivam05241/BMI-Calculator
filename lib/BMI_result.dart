import 'package:flutter/material.dart';
import 'homePage.dart';

class Result extends StatelessWidget {
  Result({this.result, this.suggestion, this.category});
  final String result, suggestion, category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        title: Text("      BMI CALCULATOR"),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  "Your Result",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                ),
              )),
          Expanded(
            flex: 5,
            child: CustomContainer(
              colour: Color(0xFF1D1E33),
              customChild: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      category,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      result,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 100,
                      ),
                    ),
                    Text(
                      suggestion,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.only(bottom: 8),
                margin: EdgeInsets.only(top: 8, bottom: 16),
                color: Color(0xFFEB1555),
                child: Center(child: Text("RE-CALCULATE")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
