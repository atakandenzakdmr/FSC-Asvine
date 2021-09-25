// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'dart:html';

import 'package:asvine/shared/style/color_style.dart';
import 'package:asvine/core/constants/text_constants.dart';
import 'package:asvine/shared/style/text_style.dart';
import 'package:asvine/shared/widget/widget_bottom_nav_bar.dart';
import 'package:asvine/shared/widget/widget_card.dart';
import 'package:asvine/shared/widget/widget_card2.dart';
import 'package:asvine/shared/widget/widget_card3.dart';
import 'package:asvine/shared/widget/widget_divider.dart';
import 'package:asvine/shared/widget/widget_drawer.dart';
import 'package:asvine/view/home/main/animated_text.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageViewState createState() => _HomePageViewState();
}


class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
            child: Text(
              homeTitle,
              textAlign: TextAlign.center,
              style: AsvineTxtStyle.homeTitleStyle,
            ),
          ),
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                AsvineColor.gradient1,
                AsvineColor.gradient2,
                AsvineColor.gradient3,
                AsvineColor.gradient4,
                AsvineColor.gradient5,
                AsvineColor.gradient6,
              ]),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 20.0,
                  spreadRadius: 1.0,
                )
              ]),
        ),
        preferredSize: Size(MediaQuery.of(context).size.width, 150.0),
      ),
      body: ListView(children: [
        AnimadtedText(),

        ///RANDOM-IMAGES

        Column(
          children: <Widget>[
            WidgetDivider(),
            Text('Gunun Kombin Onerisi',
                style: AsvineTxtStyle.onBoardBodyStyle.copyWith(fontSize: 25)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(30),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.asset('assets/images/gomlek_turuncu.jpg',
                          width: 120, height: 120)),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: Image.asset('assets/images/gri_jean_kot.jpg',
                          width: 120, height: 120)),
                ),
              ],
            )
          ],
        ),
        WidgetDivider(),

        ///HABERLER
        SizedBox(
          width: 10,
          height: 30,
          child: Center(
            child: Text('Haberler',
                style: AsvineTxtStyle.onBoardBodyStyle.copyWith(fontSize: 25)),
          ),
        ),

        Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            WidgetCard(),
            WidgetDivider(),
            WidgetCard2(),
            WidgetDivider(),
            WidgetCard3(),
          ],
        ),
        SizedBox(width: 10, height: 30),
      ]),
      drawer: const WidgetDrawer(),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
