import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieca_mobile/models/PsalmsTitle.dart';
import 'package:ieca_mobile/util/AppTheme.dart';
import 'package:ieca_mobile/widgets/_import.dart';
import 'package:ieca_mobile/widgets/badge/number_background_leading.dart';

class PsalmsTile extends StatelessWidget {
  final PsalmsTitle psalmsTitle;
  final Function() onPressed;

  const PsalmsTile({super.key, required this.psalmsTitle, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = AppTheme.colorScheme(context);
    return Container(
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHigh,
          border: Border.all(
            color: Colors.transparent
          ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: onPressed,
        child: ListTile(
          leading: NumberBackgroundLeading(number: psalmsTitle.position),
          title: Text(
            psalmsTitle.name,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.roboto(fontSize: 14),
          ),
          trailing: IconTrailing(onPressed: onPressed),
          contentPadding: EdgeInsets.only(right: 5, left: 5),
        ),
      ),
    );
  }
}
