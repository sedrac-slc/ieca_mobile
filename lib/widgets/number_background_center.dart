import 'package:flutter/material.dart';
import 'package:ieca_mobile/util/AppTheme.dart';

class NumberBackgroundCenter extends StatelessWidget {
  final int number;

  const NumberBackgroundCenter({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    final colorScheme = AppTheme.colorScheme(context);
    return  Container(
      padding: const EdgeInsets.all(5),
      height: 30,
      constraints: const BoxConstraints( minWidth: 30, minHeight: 30,),
      decoration: BoxDecoration(color: colorScheme.primary, borderRadius: BorderRadius.circular(50),),
      child: Center(
        child: Text(
          number.toString(),
          style:  const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
