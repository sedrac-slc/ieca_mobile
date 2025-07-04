import 'package:flutter/material.dart';
import 'package:ieca_mobile/util/app_theme.dart';

class NumberHymns extends StatelessWidget {
  final int number;

  const NumberHymns({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    final colorBar = AppTheme.colorAppBar(context);

    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 60, minWidth: 60),
      decoration: BoxDecoration(
        color: colorBar,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        number.toString(),
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}