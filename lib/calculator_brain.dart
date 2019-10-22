import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmr;

  String calculateBMR() {
    _bmr = weight / pow(height / 100, 2) * 59;
    return _bmr.toStringAsFixed(0);
  }

  String getResult() {
    if (_bmr >= 25) {
      return '';
    } else if (_bmr > 20) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmr >= 25) {
      return '';
    } else if (_bmr >= 20) {
      return 'GOOD JOB';
    } else {
      return 'EAT EAT EAT';
    }
  }
}
