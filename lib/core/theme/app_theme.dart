import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5C11D4);

const List<Color> _colorThemes = [
  _customColor,
  Colors.amber,
  Colors.deepPurple,
  Colors.purple,
  Colors.indigo,
  Colors.blue,
  Colors.red,
  Colors.pink,
  Colors.green,
  Colors.orange,
];

class AppTheme {

  final int selectedColor;

  AppTheme({this.selectedColor = 0}): assert((selectedColor >= 0 && selectedColor <= _colorThemes.length - 1), 'A cor deve está entre 0 e ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorThemes[selectedColor],
      //brightness: Brightness.dark
    );
  }
}
