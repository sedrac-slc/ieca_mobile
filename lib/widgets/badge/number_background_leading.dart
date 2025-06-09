import 'package:flutter/material.dart';
import 'package:ieca_mobile/util/AppTheme.dart';

class NumberBackgroundLeading extends StatelessWidget {
  final int number;

  const NumberBackgroundLeading({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    final colorBar = AppTheme.colorBackgroundAppBar(context);

    return Container(
      alignment: Alignment.center,
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: colorBar,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        number.toString(),
        style: TextStyle(
          color:  Colors.white,
          fontWeight: FontWeight.w800,
          fontSize: 14,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}