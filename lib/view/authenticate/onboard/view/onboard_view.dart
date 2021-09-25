import 'package:asvine/shared/style/color_style.dart';
import 'package:asvine/core/constants/text_constants.dart';
import 'package:asvine/shared/style/text_style.dart';
import 'package:asvine/view/authenticate/login/view/login_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';


class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const LoginView(),)
    );
  }

  Widget _buildImage(String assetName, [double width = 300]) {
    return Image.asset('assets/images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
  

// sayfa tasarimlari const ile tanimlanmistir. bunun sebebi derleme anında değerin atanmasi ve bellekte yeri ayrilmasidir.

    const pageDecoration = PageDecoration(
      titleTextStyle: AsvineTxtStyle.onBoardingStyle,
      bodyTextStyle: AsvineTxtStyle.onBoardBodyStyle,
      descriptionPadding: EdgeInsets.all(10),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.only(top: 30),
    );

    return IntroductionScreen(
      pages: [
        //1.ekran
        PageViewModel(
          title: oboardTitle1,
          body: oboardBody1,
          image: _buildImage('foto1.jpg'),
          decoration: pageDecoration,
        ),

        //2.ekran
        PageViewModel(
          title: oboardTitle2,
          body: oboardBody2,
          image: _buildImage('foto2.jpg'),
          decoration: pageDecoration,
        ),

        //3.ekran
        PageViewModel(
          title: oboardTitle3,
          body: oboardBody3,
          image: _buildImage('foto3.jpg'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context),
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      skip: const Text(
        decoratorTitle1,
        style: dotDecoratorStyle,
      ),
      next: const Icon(
        Icons.arrow_forward,
        color: AsvineColor.loginTxt,
      ),
      done: const Text(
        decoratorTitle2,
        style: dotDecoratorStyle,
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),

      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: AsvineColor.dotColorP,
        activeSize: Size(22.0, 10.0),
        activeColor: AsvineColor.dotColorA,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),

      dotsContainerDecorator: const ShapeDecoration(
        gradient: LinearGradient(colors: [
          AsvineColor.gradient1,
          AsvineColor.gradient2,
          AsvineColor.gradient3,
          AsvineColor.gradient4,
          AsvineColor.gradient5,
          AsvineColor.gradient6,
        ]),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
