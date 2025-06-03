import 'package:flutter/material.dart';
import 'package:ieca_mobile/util/AppTheme.dart';

class NumberBackgroundLeading extends StatelessWidget {
  final int number;

  const NumberBackgroundLeading({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    final colorScheme = AppTheme.colorScheme(context);

    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: colorScheme.primary,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: colorScheme.outline.withAlpha(40),
          width: 0.8,
        ),
      ),
      height: 30,
      width: 30,
      child: Text(
        number.toString(),
        style: TextStyle(
          color: colorScheme.onPrimary,
          fontWeight: FontWeight.w800,
          fontSize: 14,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}