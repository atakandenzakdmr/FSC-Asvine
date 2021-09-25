import 'package:asvine/shared/style/color_style.dart';
import 'package:flutter/material.dart';

class WidgetAppBar extends StatelessWidget implements PreferredSizeWidget {
//AppBar Boyutunu ayarlamak için PreferredSize'ı kullandik.
//StatlesWidget classindan extends ettik.
  final Color? backgroundColor;
  final Color? textIconColor;
  final String? icon;
  final String? title;
  final double? height;
  final List<Widget>? menuItem;
  final bool hideBack;

  // ignore: use_key_in_widget_constructors
  const WidgetAppBar({
    this.backgroundColor = Colors.white,
    this.textIconColor = Colors.white,
    this.icon,
    this.title = '',
    this.menuItem,
    this.height = kToolbarHeight,
    this.hideBack = false,
  });
//İmplement edilen sınıf içinde tüm özellikler override edilmesi gerekir.
  @override
  Size get preferredSize => Size.fromHeight(height!);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: menuItem,
      toolbarHeight: preferredSize.height,
      iconTheme: IconThemeData(
        color: textIconColor,
      ),
      leading: hideBack
          ? Container()
          : icon == null
              ? const BackButton()
              : IconButton(
                  icon: Image.asset(
                    icon!,
                    height: 18,
                    width: 18,
                  ),
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                ),
      title: Text(
        title!,
        style: TextStyle(
          fontSize: 40,
          color: textIconColor,
          fontFamily: 'Flamenco'
        ),
      ),
      backgroundColor: AsvineColor.gradient1,
      shadowColor: AsvineColor.gradient3,
      centerTitle: true,
    );
  }
}
