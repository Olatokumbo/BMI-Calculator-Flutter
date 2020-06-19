import "dart:math";
class CalculatorBrain{
  final int height;
  final int weight;
  double _bmi;
  CalculatorBrain({this.height, this.weight});

  String calculateBmi(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi>25){
      return ("OVERWEIGHT");
    }
    else if(_bmi > 18.5){
      return ("Normal");
    }
    else{
      return("Underweight");
    }
  }

  String getInterpretation(){
    if(_bmi>25){
      return "You BMI result is quite high, You should excercise more";
    }
    else if(_bmi > 18.5){
      return ("You BMI result is quite normal");
    }
    else{
      return("Your BMI result is quite low, You should eat more");
    }
  }
}