import 'package:flutter/material.dart';
import 'package:ieca_mobile/util/app_theme.dart';

class HymnsInfo extends StatelessWidget {
  final String text;
  final int total;

  const HymnsInfo({super.key, required this.text, required this.total});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = AppTheme.colorScheme(context);
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 13),
          ),
          Text(total.toString(), style: TextStyle(color: colorScheme.primary)),
        ],
      ),
    );
  }
}
