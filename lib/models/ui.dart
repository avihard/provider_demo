import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ui extends ChangeNotifier{
  double _fontSize = 10;
  Color _color = Colors.black;

  set fontSize(double size) {
    _fontSize = size;
    notifyListeners();
  }

  set colorValue(Color colorValue){
    _color = colorValue;
    notifyListeners();
  }

  double get fontSize => _fontSize;
  double get sliderValue => _fontSize;
  Color get colorValue => _color;
}