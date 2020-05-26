import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String getBMI() {
    this._bmi = this.weight / pow(this.height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Try to exercise more.';
    } else if (_bmi >18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have lowwer than normal body weight. You can eat a bit more.';
    }
  }
}