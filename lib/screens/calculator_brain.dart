import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({
    required this.height,
    required this.weight,
  });
  final int height;
  final int weight;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi < 18.5) {
      return 'UnderWeight';
    } else if (_bmi <= 24.5) {
      return 'Normal';
    } else if (_bmi <= 29.9) {
      return 'Pre-Obesity';
    } else {
      return 'Overweight';
    }
  }

  String getInterpretation() {
    if (_bmi < 18.5) {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    } else if (_bmi <= 24.5) {
      return 'You have a Normal Body Weight, Good Job!';
    } else if (_bmi <= 29.9) {
      return 'Pre-Obseity';
    } else {
      return 'OverWeight';
    }
  }
}
