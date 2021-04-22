import 'package:bmi_calculator/BMI_BRAIN.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'BMI_result.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color primaryColor = Color(0xFF0A0E21),
      secondryColor = Color(0xFF1D1E33),
      selectedColor = Color(0xFF121328),
      maleColor = Color(0xFF1D1E33),
      femaleColor = Color(0xFF1D1E33);

  int height = 150, weight = 60, age = 18;
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
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        maleColor = selectedColor;
                        femaleColor = secondryColor;
                      });
                    },
                    child: CustomContainer(
                      colour: maleColor,
                      customChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 2,
                            child:
                                LayoutBuilder(builder: (context, constraint) {
                              return Icon(FontAwesomeIcons.mars,
                                  size: constraint.maxHeight / (4 / 3));
                            }),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              "MALE",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF8D8E98),
                              ),
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
                      setState(() {
                        femaleColor = selectedColor;
                        maleColor = secondryColor;
                      });
                    },
                    child: CustomContainer(
                      colour: femaleColor,
                      customChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 2,
                            child:
                                LayoutBuilder(builder: (context, constraint) {
                              return Icon(FontAwesomeIcons.venus,
                                  size: constraint.biggest.height / (4 / 3));
                            }),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              "FEMALE",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF8D8E98),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: CustomContainer(
              colour: secondryColor,
              customChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 2,
                    child: LayoutBuilder(builder: (context, constraints) {
                      return Center(
                        child: Text(
                          "HEIGHT",
                          style: TextStyle(
                              fontSize: constraints.maxHeight / 3,
                              color: Color(0xFF8D8E98)),
                        ),
                      );
                    }),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "$height",
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w900),
                        ),
                        Text("cm"),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        //color: Colors.white,
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbColor: Color(0xFFEB1555),
                            overlayColor: Color(0x20EB1555),
                            activeTrackColor: Colors.white,
                            trackHeight: 1,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 8),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 20),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 250,
                            inactiveColor: Color(0xFF8D8E98),
                            onChanged: (double d) {
                              setState(() {
                                height = d.round();
                              });
                            },
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: CustomContainer(
                    colour: secondryColor,
                    customChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style:
                              TextStyle(fontSize: 24, color: Color(0xFF8D8E98)),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RoundButton(
                              icon: FontAwesomeIcons.minus,
                              func: () {
                                setState(() {
                                  weight -= 1;
                                });
                              },
                            ),
                            RoundButton(
                              icon: FontAwesomeIcons.plus,
                              func: () {
                                setState(() {
                                  weight += 1;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CustomContainer(
                    colour: secondryColor,
                    customChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style:
                              TextStyle(fontSize: 24, color: Color(0xFF8D8E98)),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RoundButton(
                              icon: FontAwesomeIcons.minus,
                              func: () {
                                setState(() {
                                  age -= 1;
                                });
                              },
                            ),
                            RoundButton(
                              icon: FontAwesomeIcons.plus,
                              func: () {
                                setState(() {
                                  age += 1;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                Brain brain = Brain(height: height, weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Result(
                      result: brain.getResult(),
                      suggestion: brain.getSuggestion(),
                      category: brain.getCategory(),
                    ),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 8, bottom: 16),
                color: Color(0xFFEB1555),
                child: Center(child: Text("CALCULATE")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  CustomContainer({@required this.colour, this.customChild});
  final Color colour;
  final Widget customChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: colour,
      ),
      margin: EdgeInsets.all(8),
      child: customChild,
    );
  }
}

class RoundButton extends StatelessWidget {
  RoundButton({this.icon, this.func});
  final IconData icon;
  final Function func;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: func,
      elevation: 6,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
