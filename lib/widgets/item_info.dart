import 'package:flutter/material.dart';
import 'package:ieca_mobile/util/app_theme.dart';
import 'package:ieca_mobile/widgets/_import.dart';

class ItemInfo extends StatelessWidget {
  final IconData icon;
  final String text;
  final int total;
  final TextStyle? textStyle;
  final TextStyle? totalTextStyle;
  final Color? backgroundColor;

  const ItemInfo({
    super.key,
    required this.icon,
    required this.text,
    required this.total,
    this.textStyle,
    this.totalTextStyle,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = AppTheme.colorScheme(context);
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
          color: colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey)
      ),
      width: 130,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: isDarkMode ? Colors.white : colorScheme.primary),
              NumberBackgroundCenter(number: total)
            ],
          ),
          Text(
            text,
            style: textStyle ?? TextStyle(color: isDarkMode ? Colors.white : colorScheme.outline),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}