import 'package:flutter/material.dart';

final asvineTheme = ThemeData(
  fontFamily: "Flamenco",
  textTheme: const TextTheme(
    subtitle1: TextStyle(
        fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700),
    bodyText1: TextStyle(
        fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600),
  ),
);

class AsvineColor {
  //splasScreen
  static const splashColor = Color(0xFF286A8F);

  //onBoarding
  static const dotColorA = Color(0xFF527DAA);
  static const dotColorP = Color(0xFFD5E1EE);
  static const dotContainer = Color(0xfff8be99);

  //appBar
  static const gradient1 = Color(0xfff8be99);
  static const gradient2 = Color(0xfff7bb99);
  static const gradient3 = Color(0xfff7b79a);
  static const gradient4 = Color(0xfff5b09b);
  static const gradient5 = Color(0xfff3a99c);
  static const gradient6 = Color(0xfff1a29c);

  //homeScreen

  static const homeTitleColors = Color(0xfff87b55);
  static const homeTxtColors = Color(0xfff7b79a);

  static const dividerColors = Color(0xFFF9E1EE);

  //loginScreen

  static const loginTxt = Color(0xFF527DAA);
  static const loginEntry = Color(0xFFA9E3EE);
  static const loginHintTxt = Color(0xFFD5E1EE);



  static const imageShadow = Color(0xffffe9dc);

  static const gradientColors =
  [
  Color(0xfff8be99),
  Color(0xfff7bb99),
  Color(0xfff7b79a),
  Color(0xfff5b09b),
  Color(0xfff3a99c),
  Color(0xfff1a29c),
  ];

  static const colorizeColors = 
  [
  Color(0xfff5b09b),
  Color(0xfff87b55),
  Color(0xff68e0a7),
  Color(0xfff87b55),
  Color(0xff8a6550),
  ];
  
}

