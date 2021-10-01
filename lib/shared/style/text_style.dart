// ignore_for_file: prefer_const_constructors
import 'package:asvine/shared/style/color_style.dart';
import 'package:flutter/material.dart';

const dotDecoratorStyle = TextStyle(
    color: AsvineColor.dotTxtColor,
    fontWeight: FontWeight.w900,
    fontFamily: 'Flamenco');

class AsvineTxtStyle {
  /// SPLASH-PAGE-VIEW
  ///
  ///
  ///
  static const splashTextStyle = TextStyle(
    fontSize: 80.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Flamenco',
  );

  /// ONBOARDING-PAGE-VIEW
  ///
  ///
  ///
  static const onBoardingStyle = TextStyle(
    color: Colors.white70,
    fontSize: 40.0,
    fontFamily: 'Belgrano',
    shadows: <Shadow>[
      Shadow(offset: Offset(5.0, 5.0), blurRadius: 7, color: Colors.white54),
    ],
  );

  static const onBoardBodyStyle = TextStyle(
    color: Colors.white70,
    fontSize: 30.0,
    fontFamily: 'Flamenco',
    shadows: <Shadow>[
      Shadow(offset: Offset(5.0, 5.0), blurRadius: 7, color: Colors.white54),
    ],
  );

  /// HOME-PAGE-VIEW
  ///
  ///
  ///
  static const homeTitleStyle = TextStyle(
    color: Colors.white,
    fontSize: 40.0,
    fontFamily: 'Flamenco',
  );

  static const homeTextStyle = TextStyle(
    color: AsvineColor.homeTxtColors,
    fontSize: 40.0,
    fontFamily: 'Flamenco',
  );

  static const homeTextStyle2 = TextStyle(
    color: AsvineColor.homeTitleColors,
    fontSize: 40.0,
    fontFamily: 'Flamenco',
  );

  static const newsTitleStyle = TextStyle(
    color: AsvineColor.homeTitleColors,
    fontSize: 20.0,
    fontFamily: 'Flamenco',
  );

  static const newsSubtitleStyle = TextStyle(
    color: AsvineColor.homeTitleColors,
    fontSize: 10.0,
    fontFamily: 'Belgrano',
  );

  /// LOGIN-PAGE-VIEW
  ///
  ///
  ///
  ///
  static const loginHintTextStyle = TextStyle(
    color: Color(0xFFD5E1EE),
    fontFamily: 'Flamenco',
  );

  static const loginLabelStyle = TextStyle(
    color: Colors.white,
    fontSize: 17.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Flamenco',
  );

  /// LOGIN-PAGE-VIEW
  ///
  ///
  ///
  ///

}
