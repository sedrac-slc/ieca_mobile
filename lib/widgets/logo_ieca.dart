import 'package:flutter/material.dart';
import 'package:ieca_mobile/util/AppAsset.dart';

class LogoIeca extends StatelessWidget {
  const LogoIeca({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 30,
        height: 30,
        child: Image.asset(AppAsset.logo, fit: BoxFit.contain),
      ),
    );
  }
}
