import 'package:flutter/material.dart';
import 'package:ieca_mobile/theme/theme.dart';

class AppTheme{

  static ColorScheme colorScheme(BuildContext context){
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    return isDarkMode ? MaterialTheme.darkScheme() : MaterialTheme.lightScheme();
  }

  static Color colorAppBar(BuildContext context){
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    return  isDarkMode ? MaterialTheme.darkScheme().primary : MaterialTheme.lightScheme().primary;
  }

  static Color colorAppBarDark(BuildContext context){
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    return  isDarkMode ? Colors.grey : MaterialTheme.lightScheme().primary;
  }

}