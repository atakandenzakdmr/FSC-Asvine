import 'package:asvine/shared/widget/widget_appbar.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {

    return  const Scaffold(
        appBar: WidgetAppBar(title: 'Profil',),
        

    );
  }
  
}