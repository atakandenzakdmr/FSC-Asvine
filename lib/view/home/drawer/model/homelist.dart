
// ignore_for_file: prefer_const_constructors

import 'package:asvine/view/home/profile/view/profile_view.dart';
import 'package:flutter/widgets.dart';

class HomeList {
  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  Widget? navigateScreen;
  String imagePath;

  static List<HomeList> homeList = [
    HomeList(
      imagePath: 'assets/images/gomlek_turuncu.jpg',
      navigateScreen: ProfileView(),
    ),
    HomeList(
      imagePath: 'assets/images/gomlek_turuncu.jpg',
      navigateScreen: ProfileView(),
    ),
    HomeList(
      imagePath: 'assets/images/gomlek_turuncu.jpg',
      navigateScreen: ProfileView(),
    ),
    HomeList(
      imagePath: 'assets/images/gomlek_turuncu.jpg',
      navigateScreen: ProfileView(),
    ),
  ];
}
