// ignore_for_file: prefer_const_constructors
import 'package:asvine/core/constants/text_constants.dart';
import 'package:asvine/shared/style/color_style.dart';
import 'package:asvine/shared/style/decoration_style.dart';
import 'package:asvine/shared/style/text_style.dart';
import 'package:asvine/view/authenticate/register/view/register_view.dart';
import 'package:asvine/view/home/main/homepage_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _rememberMe = false;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
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
            obscureText: true, // Gizli metin ozelligi
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

  Widget _buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => print('Forgot Password Button Pressed'),
        child: Text(
          loginForgot,
          style: AsvineTxtStyle.loginLabelStyle,
        ),
      ),
    );
  }

  Widget _buildRememberMeCheckbox() {
    return SizedBox(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _rememberMe,
              checkColor: AsvineColor.loginTxt,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value!;
                });
              },
            ),
          ),
          Text(
            loginRemember,
            style: AsvineTxtStyle.loginLabelStyle,
          ),
        ],
      ),
    );
  }

  Widget _buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          String email = emailController.text;
          String password = passwordController.text;

          if (email.isEmpty && password.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
              'Lutfen Deger Giriniz',
              textAlign: TextAlign.center,
            )));
          } else {
            // await authenticationNotifier.signup(
            // email: email, password: password);
            return _homePage(context);
          }
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          loginLogin,
          style: TextStyle(
            color: AsvineColor.loginTxt,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Flamenco',
          ),
        ),
      ),
    );
  }

  Widget _buildSignInWithText() {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        Text(
          loginOr,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20.0),
        Text(
          loginWith,
          style: AsvineTxtStyle.loginLabelStyle,
        ),
      ],
    );
  }

  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialBtnRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialBtn(
            () => print('Login with Twitter'),
            AssetImage(
              'assets/logos/twitter.png',
            ),
          ),
          _buildSocialBtn(
            () => print('Login with Google'),
            AssetImage(
              'assets/logos/google.png',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignupBtn() {
    return GestureDetector(
      onTap: () => _registerPage(context),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: const [
            TextSpan(
              text: loginAcount,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.w400,
                fontFamily: 'Flamenco',
              ),
            ),
            TextSpan(
              text: loginSignUp,
              style: TextStyle(
                color: AsvineColor.loginTxt,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Flamenco',
              ),
            ),
          ],
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
                height: double.infinity,
                width: double.infinity,
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
                        loginIn,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Flamenco',
                          fontSize: 38.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      _buildEmailTF(),
                      SizedBox(
                        height: 30.0,
                      ),
                      _buildPasswordTF(),
                      _buildForgotPasswordBtn(),
                      _buildRememberMeCheckbox(),
                      _buildLoginBtn(),
                      _buildSignInWithText(),
                      _buildSocialBtnRow(),
                      _buildSignupBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _registerPage(context) {
    //  onDone: () => _onIntroEnd(context), //
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => const RegisterView(),
    ));
  }

  void _homePage(context) {
    //  onDone: () => _onIntroEnd(context), //
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => const HomePageView(),
    ));
  }
}
