import 'package:flutter/material.dart';
import 'package:ieca_mobile/theme/theme.dart';

class AppTheme{

  static ColorScheme colorScheme(BuildContext context){
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    return isDarkMode ? MaterialTheme.darkScheme() : MaterialTheme.lightScheme();
  }

  static Color colorBackgroundAppBar(BuildContext context){
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    ColorScheme colorScheme = isDarkMode ? MaterialTheme.darkScheme() : MaterialTheme.lightScheme();
    return colorScheme.secondary;
  }

}