import 'package:asvine/shared/style/text_style.dart';
import 'package:asvine/view/authenticate/login/view/login_view.dart';
import 'package:asvine/view/home/drawer/drawer_info.dart';
import 'package:asvine/view/home/profile/view/profile_view.dart';
import 'package:flutter/material.dart';

class WidgetDrawer extends StatefulWidget {
  const WidgetDrawer({ Key? key }) : super(key: key);

  @override
  _WidgetDrawerState createState() => _WidgetDrawerState();
}

class _WidgetDrawerState extends State<WidgetDrawer> {
  
   int _selectedDestination = 10 ;

  @override
  Widget build(BuildContext context) {
    return Drawer(          
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            const SizedBox(height: 67,),
             //ilk bolum
            const Padding(
              padding: EdgeInsets.all(15.0),
                child:Text(
                '@atakandenss',
                textAlign: TextAlign.center,
                style: AsvineTxtStyle.homeTextStyle,
              ), 
            ),
            const Divider(
              height: 10,
              thickness: 1,
            ),
            ListTile(
              leading: const Icon(Icons.person_outline),
              title: const Text('Profil'),
              selected: _selectedDestination == 0,
              onTap: () => _profilePage(context),
            ),
            ListTile(
              leading: const Icon(Icons.now_widgets_outlined),
              title: const Text('Haberler'),
              selected: _selectedDestination == 1,
              onTap: () => selectDestination(1),
            ),
            ListTile(
              leading: const Icon(Icons.bookmark_border),
              title: const Text('Kaydedilenler'),
              selected: _selectedDestination == 2,
              onTap: () => selectDestination(2),
            ),
///
///            
            //2.kisim
            const Divider(
              height: 14,
              thickness: 1,
            ),
            ListTile(
              leading: const Icon(Icons.photo_camera_back),
              title: const Text('Galerim'),
              selected: _selectedDestination == 3,
              onTap: () => selectDestination(3),
            ),
            ListTile(
              leading: const Icon(Icons.comment_bank_outlined),
              title: const Text('Kombinlerim'),
              selected: _selectedDestination == 4,
              onTap: () => selectDestination(4),
            ),
            ListTile(
              leading: const Icon(Icons.dashboard_outlined),
              title: const Text('Marka ve Bedenim'),
              selected: _selectedDestination == 5,
              onTap: () => selectDestination(5),
            ),
///
///      
              const Divider(
              height: 14,
              thickness: 1,
            ),
            ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: const Text('Ayalar'),
              selected: _selectedDestination == 6,
              onTap: () => selectDestination(6),
            ),
            ListTile(
              leading: const Icon(Icons.info_outline_rounded),
              title: const Text('Asvine Hakkinda'),
              selected: _selectedDestination == 7,
              onTap: () => _infoPage(context),
            ),
            ListTile(
              leading: const Icon(Icons.help_center_outlined),
              title: const Text('Asvine Destek'),
              selected: _selectedDestination == 8,
              onTap: () => selectDestination(8),
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app_outlined),
              title: const Text('Cikis Yap'),
              selected: _selectedDestination == 9,
              onTap: () =>_loginPage(context),
            ),
          ],
        ),
      );
  }
    void _loginPage(context) {
    //  onDone: () => _onIntroEnd(context), //
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => const LoginView(),
    ));
  }
    void _profilePage(context) {
    //  onDone: () => _onIntroEnd(context), //
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => const ProfileView(),
    ));
  }      
    void _infoPage(context) {
    //  onDone: () => _onIntroEnd(context), //
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => const InfoView(),
    ));
  }
    void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}