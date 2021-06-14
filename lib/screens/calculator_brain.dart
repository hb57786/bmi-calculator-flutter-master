import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Acima do Peso';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Abaixo do Peso';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Você está um pouco acima do peso! Tente se exercitar mais!';
    } else if (_bmi > 18.5) {
      return 'Você está no peso ideal! Bom trabalho!!!';
    } else {
      return 'Você está um pouco abaixo do peso! Você pode comer um pouco mais!';
    }
  }
}
