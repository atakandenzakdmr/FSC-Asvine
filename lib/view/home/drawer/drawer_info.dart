// ignore_for_file: prefer_const_constructors
import 'package:asvine/shared/dialogs/privacy_policy.dart';
import 'package:asvine/shared/style/color_style.dart';
import 'package:asvine/shared/widget/widget_appbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class InfoView extends StatefulWidget {
  const InfoView({Key? key}) : super(key: key);

  @override
  _InfoViewState createState() => _InfoViewState();
}

class _InfoViewState extends State<InfoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetAppBar(),
      
      body: Container(
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
      child: Center(
        child: (Padding(
          padding: const EdgeInsets.all(6.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Üyelik Kosullari\n\n",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontFamily: 'Flamenco'),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return PolicyDialog(
                            mdFileName: 'uyelik_kosullari.md',
                          );
                        },
                      );
                    },
                ),
                TextSpan(
                  text: 've',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: 'Flamenco'),
                ),
                TextSpan(
                  text: "\n\nKisisel Verilerin Korunmasi",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontFamily: 'Flamenco'),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return PolicyDialog(
                            mdFileName: 'uyelik_gizlilik.md',
                          );
                        },
                      );
                    },
                ),
              ],
            ),
          ),
        )),
      ),
      )
    );
  }
}
