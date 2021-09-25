import 'package:asvine/core/constants/text_constants.dart';
import 'package:asvine/shared/style/color_style.dart';
import 'package:asvine/view/home/main/homepage_view.dart';
import 'package:asvine/view/home/wardrobe/view/wardrobe_view.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget implements PreferredSizeWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();

  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AsvineColor.gradient1,
      currentIndex: _currentIndex,
      unselectedItemColor: Colors.white54,
      selectedItemColor: Colors.white,
      onTap: (value) {
        setState(() => _currentIndex = value);
        if (_currentIndex == 0) {
          setState(() => _homePage(context));
        }
        if (_currentIndex == 2) {
          setState(() => _wardrobePage(context));
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.pages),
          label: barHome,
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined), label: barCam),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: barWardrobe,
        ),
      ],
    );
  }

  void _homePage(context) {
    //  onDone: () => _onIntroEnd(context), //
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => const HomePageView(),
    ));
  }

  void _wardrobePage(context) {
    //  onDone: () => _onIntroEnd(context), //
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => const WardrobeView(),
    ));
  }
}
