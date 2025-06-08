import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieca_mobile/widgets/_import.dart';

class BadgeContainer extends StatelessWidget {
  final String text;
  final double padding;
  final List<BadgeItem> children;

  const BadgeContainer({super.key, required this.text, required this.children, this.padding = 10});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      alignment: Alignment.topLeft,
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          Text(text, style: GoogleFonts.roboto(fontSize: 15)),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: children.length,
              separatorBuilder: (context, index) => Padding(padding: EdgeInsets.symmetric(horizontal: padding)),
              itemBuilder: (context, index) => children[index],
            ),
          ),
        ],
      ),
    );
  }
}
