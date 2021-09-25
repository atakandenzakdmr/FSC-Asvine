import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ColorTheme extends ChangeNotifier {
  var isDarkMode = false;

  void toggleMode(){
    isDarkMode = !isDarkMode;
    notifyListeners();
  }

  ThemeData get darkTheme => ThemeData(
    colorScheme: const ColorScheme.dark(
      brightness: Brightness.dark,

      primary: Color(0xff0c1a17),
      primaryVariant: Color(0xff131c20),
      secondary: Color(0xff30363a),
      secondaryVariant: Color(0xff507382),
      background: Color(0xfffeffff),
      
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.white),
    ),
  );

  ThemeData get lightTheme => ThemeData(
    colorScheme: const ColorScheme.light(
      brightness: Brightness.light,

      primary: Color(0xff0c1a17),
      primaryVariant: Color(0xff131c20),
      secondary: Color(0xff30363a),
      secondaryVariant: Color(0xff507382),
      background: Color(0xfffeffff),

    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.black),
    ),
  );
}