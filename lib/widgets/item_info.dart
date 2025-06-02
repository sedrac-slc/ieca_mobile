import 'package:flutter/material.dart';
import 'package:ieca_mobile/util/AppTheme.dart';

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

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? colorScheme.onTertiary,
        gradient: LinearGradient(colors: [
          colorScheme.surface,
          colorScheme.secondaryContainer
        ]),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: colorScheme.primaryContainer)
      ),
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: colorScheme.primary),
              const SizedBox(height: 8),
              Text(text, style: textStyle ?? TextStyle(color: colorScheme.outline),),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(5),
            height: 30,
            constraints: const BoxConstraints( minWidth: 30, minHeight: 30,),
            decoration: BoxDecoration(color: colorScheme.primary, borderRadius: BorderRadius.circular(50),),
            child: Center(
              child: Text(
                total.toString(),
                style: totalTextStyle ?? const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}