import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/constants/constants.dart';

class AppTheme {
  static final theme = ThemeData(
    colorScheme: ColorScheme.fromSwatch(
            primarySwatch: primaryColor, accentColor: accentColor)
        .copyWith(
      secondary: accentColor,
    ),
  );

  static ThemeData get themeData {
    return theme;
  }
}
