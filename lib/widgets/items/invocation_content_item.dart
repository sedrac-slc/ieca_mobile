import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:ieca_mobile/widgets/_import.dart';

class InvocationContentItem extends StatelessWidget {
  final InvocationContent invocationContent;

  const InvocationContentItem({super.key, required this.invocationContent});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        NumberBackgroundCenter(number: invocationContent.position),
        Expanded(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.grey.withAlpha(10),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Text(
                  invocationContent.content,
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Text(invocationContent.books, style: GoogleFonts.roboto(fontWeight: FontWeight.w600),)
            ],
          ),
        ),
      ],
    );
  }
}
