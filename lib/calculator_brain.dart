import 'dart:math';

double? _bmi;

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  int weight;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'Over Weight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Under Weight';
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'You have heigher than normal body weight. Try to exercise more';
    } else if (_bmi! > 18.5) {
      return 'You have normal body weight. Good job';
    } else {
      return 'You have lower than normal body weight. You can eat a bit more';
    }
  }
}
