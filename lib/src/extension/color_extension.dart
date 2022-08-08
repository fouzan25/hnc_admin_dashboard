import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/constants/material_color.dart';

extension CustomColorExtension on Color {
  MaterialColor convertToMaterialColor() {
    final MaterialColor materialColor = AppColor.generateMaterialColor(this);
    return materialColor;
  }
}
