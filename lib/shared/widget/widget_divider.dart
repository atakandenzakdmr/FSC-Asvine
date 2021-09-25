import 'package:asvine/shared/style/color_style.dart';
import 'package:flutter/material.dart';

class WidgetDivider extends StatelessWidget {
  const WidgetDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 30,
      color: AsvineColor.dividerColors,
      thickness: 2,
    );
  }
}
