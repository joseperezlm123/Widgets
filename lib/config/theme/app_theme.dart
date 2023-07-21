import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.purple,
  Colors.orange,
  Colors.green,
  Colors.red,
  Colors.pink,
  Colors.teal
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(
            selectedColor >= 0, "El color selecionado debe de ser mayor a 0"),
        assert(
            selectedColor < colorList.length, "El color selecionado no puede ser menor a  ${colorList.length -1}");

  ThemeData getTheme() =>
      ThemeData(useMaterial3: true, colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(
        centerTitle: true
      ));
}
