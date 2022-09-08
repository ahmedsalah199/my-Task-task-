import 'package:flutter/material.dart';
import 'package:my_task/core/utils/app_colors.dart';

ThemeData appTheme() {
  return ThemeData(
      scaffoldBackgroundColor: AppColors.primaryColor,
      drawerTheme: const DrawerThemeData(backgroundColor: Colors.black));
}
