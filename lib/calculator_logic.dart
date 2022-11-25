import 'dart:math';

class CalculatorLogic {
  CalculatorLogic({required this.height, required this.weight});

  final int height;
  final int weight;

  // ignore: prefer_final_fields
  double? _bmi;

  // ignore: body_might_complete_normally_nullable, non_constant_identifier_names
  String CalculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  // ignore: body_might_complete_normally_nullable
  String getResult() {
    if (_bmi! >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi! > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  // ignore: body_might_complete_normally_nullable
  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'You have higher than normal body weight, Try to exercise more.';
    } else if (_bmi! > 18.5) {
      return 'You have normal body weight, Keep it up.';
    } else {
      return 'Your BMI result is quit low, you should eat more!';
    }
  }
}
