import 'package:flutter/material.dart';
import 'package:ieca_mobile/util/app_theme.dart';

class RollbackButton extends StatelessWidget {
  const RollbackButton({super.key});

  @override
  Widget build(BuildContext context) {
    final color = AppTheme.colorAppBar(context);
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
      ),
      child: IconButton(
        icon: Icon(Icons.close, color: Colors.white,),
        color: color,
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
