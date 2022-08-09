import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/constants/material_color.dart';

extension CustomColorExtension on Color {
  MaterialColor convertToMaterialColor() {
    final MaterialColor materialColor = AppColor.generateMaterialColor(this);
    return materialColor;
  }
}

extension CustomColorStringExtension on String {
  Color getColorFromString(List rgbVal) {
    var hexColor = this;
    hexColor = hexColor.toUpperCase().replaceAll('#', '');

    if (hexColor.contains('+')) {
      return Color.fromRGBO(rgbVal[0], rgbVal[1], rgbVal[2], 1);
    }
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return Color(int.parse(hexColor, radix: 16));
  }
}
