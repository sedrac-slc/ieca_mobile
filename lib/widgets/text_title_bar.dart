import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextTitleBar extends StatelessWidget {
  final String text;
  final Color? color;

  const TextTitleBar({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return  Text(text, style: GoogleFonts.poppins(color: color),);
  }
}
