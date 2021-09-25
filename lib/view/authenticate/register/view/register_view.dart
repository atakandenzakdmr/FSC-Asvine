// ignore_for_file: prefer_const_constructors
import 'package:asvine/core/constants/text_constants.dart';
import 'package:asvine/shared/dialogs/privacy_policy.dart';
import 'package:asvine/shared/style/color_style.dart';
import 'package:asvine/shared/style/decoration_style.dart';
import 'package:asvine/shared/style/text_style.dart';
import 'package:asvine/shared/widget/widget_appbar.dart';
import 'package:asvine/view/authenticate/login/view/login_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  get value => null;

  get authenticationNotifier => null;


  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  Widget _buildUserName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          loginUserN,
          style: AsvineTxtStyle.loginLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: loginBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            style: TextStyle(
              color: AsvineColor.loginTxt,
              fontFamily: 'Flamenco',
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(Icons.person, color: AsvineColor.loginHintTxt),
                hintText: loginHintUserN,
                hintStyle: AsvineTxtStyle.loginHintTextStyle),
          ),
        ),
      ],
    );
  }

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          loginMail,
          style: AsvineTxtStyle.loginLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: loginBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            style: TextStyle(
              color: AsvineColor.loginTxt,
              fontFamily: 'Flamenco',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: AsvineColor.loginHintTxt,
              ),
              hintText: loginHintMail,
              hintStyle: AsvineTxtStyle.loginHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          loginPass,
          style: AsvineTxtStyle.loginLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: loginBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            obscureText: true,
            controller: passwordController,
            style: TextStyle(
              color: AsvineColor.loginTxt,
              fontFamily: 'Flamenco',
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.lock,
                  color: AsvineColor.loginHintTxt,
                ),
                hintText: loginHintPass,
                hintStyle: AsvineTxtStyle.loginHintTextStyle),
          ),
        ),
      ],
    );
  }

  Widget _buildDialogBTN() {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: "Bir hesap olusturarak,\n",
          style: TextStyle(color: Colors.white70, fontFamily: 'Belgrano'),
          children: [
            TextSpan(
              text: "Üyelik Kosullarını ",
              style: TextStyle(
                  color: AsvineColor.loginTxt,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
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
                text: "ve ",
                style:
                    TextStyle(color: Colors.white70, fontFamily: 'Belgrano')),
            TextSpan(
              text: "Kisisel Verilerin Korunmasını  ",
              style: TextStyle(
                  color: AsvineColor.loginTxt,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
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
            TextSpan(
                text: '\nKabul etmis sayılırsınız.',
                style:
                    TextStyle(color: Colors.white70, fontFamily: 'Belgrano')),
          ],
        ),
      ),
    );
  }

  Widget _buildRegisterBtn() {

    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          String email = emailController.text;
          String password = passwordController.text;

          if (email.isEmpty && password.isEmpty) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Lutfen Deger Giriniz', textAlign: TextAlign.center,)));
          } else {
                // await authenticationNotifier.signup(
                // email: email, password: password);
                return _loginPage(context);
          }
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          loginSignUp,
          style: TextStyle(
            color: AsvineColor.loginTxt,
            letterSpacing: 1.5,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Flamenco',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    
      return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.maxFinite,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: const [
                      AsvineColor.gradient1,
                      AsvineColor.gradient3,
                      AsvineColor.gradient4,
                      AsvineColor.gradient6,
                    ],
                    stops: const [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
              ),
              SizedBox(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        loginUp,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Flamenco',
                          fontSize: 45.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      _buildUserName(),
                      SizedBox(
                        height: 30.0,
                      ),
                      _buildEmailTF(),
                      SizedBox(
                        height: 30.0,
                      ),
                      _buildPasswordTF(),
                      SizedBox(
                        height: 30.0,
                      ),
                      _buildDialogBTN(),
                      _buildRegisterBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      appBar: WidgetAppBar(),
    );
  }

  void _loginPage(context) {
    //  onDone: () => _onIntroEnd(context), //
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => const LoginView(),
    ));
  }
}
