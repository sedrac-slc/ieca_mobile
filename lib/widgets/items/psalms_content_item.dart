import 'package:flutter/material.dart';
import 'package:ieca_mobile/enums/_import.dart';
import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/util/app_theme.dart';

class PsalmsContentItem extends StatelessWidget {
  final PsalmsContent psalmsContent;

  const PsalmsContentItem({super.key, required this.psalmsContent});

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    final color = isDarkMode ? Colors.grey :  AppTheme.primary;
    return Text(
      psalmsContent.content,
      style: TextStyle(fontSize: 15, color: PsalmsPerson.CONGREGATION == psalmsContent.person ? color : null),
    );
  }
}
