import 'package:flutter/material.dart';
import 'package:ieca_mobile/util/app_theme.dart';

class IconTrailing extends StatelessWidget {
  final Function()? onPressed;

  const IconTrailing({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final colorBar = AppTheme.colorBackgroundAppBar(context);
    return Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: colorBar,
        ),
        child: InkWell(
          onTap: onPressed,
          child: Icon(Icons.navigate_next_outlined, color: Colors.white),
        )
    );
  }
}
