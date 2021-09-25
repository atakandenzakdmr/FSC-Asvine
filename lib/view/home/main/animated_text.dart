import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:asvine/core/constants/text_constants.dart';
import 'package:asvine/shared/style/text_style.dart';
import 'package:flutter/material.dart';

class AnimadtedText extends StatelessWidget {
  const AnimadtedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: <Widget>[
          const SizedBox(width: 70.0, height: 150.0),
          const Text(
            animatedTxt1,
            style: AsvineTxtStyle.homeTextStyle2,
          ),
          const SizedBox(width: 25.0, height: 100.0),
          DefaultTextStyle(
            style: AsvineTxtStyle.homeTextStyle,
            child: AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText(animatedTxt2),
                RotateAnimatedText(animatedTxt3),
                RotateAnimatedText(animatedTxt4),
              ],
              repeatForever: true,
            ),
          ),
        ]
      );
  }
}
