import 'dart:math';

class Brain {
  Brain({this.height, this.weight});
  final int height, weight;
  double BMI;
  String getResult() {
    BMI = weight / pow(height / 100, 2);
    return BMI.toStringAsFixed(1);
  }

  String getSuggestion() {
    if (BMI >= 25)
      return "You have higher than normal body weight,Try to exercise more";
    else if (BMI < 18.5)
      return "You have less than normal body weight, You can eat a bit more";
    else
      return "You have a normal body weight, Well done";
  }

  String getCategory() {
    if (BMI >= 25)
      return "OVERWEIGHT";
    else if (BMI < 18.5)
      return "UNDERWEIGHT";
    else
      return "NORMAL";
  }
}
