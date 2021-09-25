// ignore_for_file: prefer_const_constructors

import 'package:asvine/core/constants/text_constants.dart';
import 'package:asvine/shared/style/color_style.dart';
import 'package:asvine/shared/style/text_style.dart';
import 'package:asvine/shared/widget/widget_bottom_nav_bar.dart';
import 'package:asvine/shared/widget/widget_drawer.dart';
import 'package:asvine/view/home/main/animated_text.dart';
import 'package:flutter/material.dart';

class WardrobeView extends StatefulWidget {
  const WardrobeView({Key? key}) : super(key: key);

  @override
  _WardrobeViewState createState() => _WardrobeViewState();
}

class _WardrobeViewState extends State<WardrobeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
            child: Text(
              wardrobeTitle,
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
      body: ListView(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            shadowColor: AsvineColor.gradient3,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.keyboard_arrow_right_outlined),
                  title: const Text('Ust Giyim'),
                  subtitle: Text(
                    'Dolabindaki mevcut urunler',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('Urun Ekle!'),
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/gomlek_turuncu.jpg',
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'assets/images/gomlek_bordo.jpg',
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'assets/images/siyah_gomlek.jpg',
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 10, height: 30),
          Card(
            clipBehavior: Clip.antiAlias,
            shadowColor: AsvineColor.gradient3,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.keyboard_arrow_right_outlined),
                  focusColor: Colors.black,
                  title: const Text('Alt Giyim'),
                  subtitle: Text(
                    'Dolabindaki mevcut urunler',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('Urun Ekle!'),
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/gri_jean_kot.jpg',
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'assets/images/mavi_jean_kot.jpg',
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'assets/images/siyah_pantolon.jpg',
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: const WidgetDrawer(),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
