// ignore_for_file: prefer_const_constructors
import 'package:asvine/core/constants/text_constants.dart';
import 'package:asvine/shared/style/color_style.dart';
import 'package:asvine/shared/style/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetCard3 extends StatelessWidget implements PreferredSizeWidget {
//AppBar Boyutunu ayarlamak için PreferredSize'ı kullandik.
//StatlesWidget classindan extends ettik.
  final Color? backgroundColor;
  final Color? textIconColor;
  final String? icon;
  final String? title;
  final String? subtitle;
  final double? height;
  final List<Widget>? menuItem;
  final bool hideBack;

  // ignore: use_key_in_widget_constructors
  const WidgetCard3({
    this.backgroundColor = Colors.white,
    this.textIconColor = Colors.white,
    this.icon,
    this.title = '',
    this.subtitle = '',
    this.menuItem,
    this.height = kToolbarHeight,
    this.hideBack = false,
  });
//İmplement edilen sınıf içinde tüm özellikler override edilmesi gerekir.
  @override
  Size get preferredSize => Size.fromHeight(height!);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 100,
        color: Colors.white,
        child: Row(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Expanded(
                  child: Image.asset(
                    'assets/logos/vogue.png',
                    width: 100,
                    height: 100,
                  ),
                  flex: 2,
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Expanded(
                      flex: 6,
                      child: ListTile(
                        title: Text("Justin Bieber\'in Tercihi", style: AsvineTxtStyle.newsTitleStyle),
                        
                        subtitle: Text(homeNewsSubTitle3, style: AsvineTxtStyle.newsSubtitleStyle),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 8,
                          ),
                          TextButton(
                            child: Text("Devamini Oku",style: TextStyle(color: AsvineColor.gradient6, fontWeight: FontWeight.bold)),
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: 8,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              flex: 8,
            ),
          ],
        ),
      ),
      elevation: 8,
      margin: EdgeInsets.all(10),
    );
  }
}
