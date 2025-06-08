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
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey)
      ),
      width: 130,
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(icon, color: colorScheme.primary),
              Container(
                padding: const EdgeInsets.all(2),
                height: 10,
                constraints: const BoxConstraints( minWidth: 25, minHeight: 25,),
                decoration: BoxDecoration(color: colorScheme.error, borderRadius: BorderRadius.circular(50),),
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
          Text(text, style: textStyle ?? TextStyle(color: colorScheme.outline),),
        ],
      ),
    );
  }
}