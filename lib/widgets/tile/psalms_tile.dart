import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieca_mobile/models/psalms_title.dart';
import 'package:ieca_mobile/util/app_theme.dart';
import 'package:ieca_mobile/widgets/_import.dart';

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
          title: Text(
            psalmsTitle.name,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.roboto(fontSize: 14, color: AppTheme.textTile(context)),
          ),
          trailing: IconTrailing(onPressed: onPressed),
          contentPadding: EdgeInsets.only(right: 5, left: 5),
        ),
      ),
    );
  }
}
