import 'package:flutter/material.dart';
import 'package:ieca_mobile/enums/_import.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:ieca_mobile/util/app_theme.dart';

class PsalmsContentItem extends StatelessWidget {
  final PsalmsContent psalmsContent;

  const PsalmsContentItem({super.key, required this.psalmsContent});

  @override
  Widget build(BuildContext context) {
    final color = AppTheme.colorAppBarDark(context);
    return Text(
      psalmsContent.content,
      style: TextStyle(fontSize: 15, color: PsalmsPerson.CONGREGATION == psalmsContent.person ? color : null),
    );
  }
}
