import 'package:flutter/material.dart';
import 'package:ieca_mobile/util/app_asset.dart';

class LogoIeca extends StatelessWidget {
  final double width;
  final double height;

  const LogoIeca({super.key, this.width = 30, this.height = 30});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        height: height,
        child: Image.asset(AppAsset.logo, fit: BoxFit.contain),
      ),
    );
  }
}
