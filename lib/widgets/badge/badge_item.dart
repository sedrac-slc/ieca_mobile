import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieca_mobile/util/AppTheme.dart';

class BadgeItem extends StatelessWidget {
  final String text;
  final bool isSelected;

  const BadgeItem({super.key, required this.text, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = AppTheme.colorScheme(context);
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? colorScheme.secondary : Colors.white60,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.grey),
      ),
      width: 100,
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.roboto(
            fontSize: 15,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
