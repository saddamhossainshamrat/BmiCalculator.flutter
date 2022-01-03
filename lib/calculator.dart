import 'dart:math';

class Calculator {
  Calculator(this.weight, this.height);
  final int weight;
  final int height;

  late double _bmi;

  String BmiCalculator() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String bmiResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Low';
    }
  }

  String BmiComment() {
    if (_bmi >= 25) {
      return 'Your weight is too high! Try to excercise.';
    } else if (_bmi > 18.5) {
      return 'Great! Your weight is normal.Keep it up!';
    } else {
      return 'Your weight is too low! Try to eat more.';
    }
  }
}
