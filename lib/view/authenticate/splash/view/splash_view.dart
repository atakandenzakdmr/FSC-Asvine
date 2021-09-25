import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:asvine/shared/style/color_style.dart';
import 'package:flutter/material.dart';

import '../../onboard/view/onboard_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const OnBoardingPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AsvineColor.gradient4,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextLiquidFill(
                boxHeight: 600,
                boxWidth: 600,
                boxBackgroundColor: AsvineColor.gradient4,
                text: 'A S V I N E',
                waveColor: Colors.white,
                textStyle: const TextStyle(
                  color: AsvineColor.gradient4,
                  fontSize: 70.0,
                  fontFamily: 'Flamenco',
                  shadows: <Shadow>[
                    Shadow(
                        offset: Offset(5.0, 5.0),
                        blurRadius: 7,
                        color: Colors.white54),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
