import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieca_mobile/models/invocation_title.dart';
import 'package:ieca_mobile/util/app_theme.dart';
import 'package:ieca_mobile/widgets/_import.dart';

class InvocationTile extends StatelessWidget {
  final InvocationTitle item;
  final Function()? onPressed;

  const InvocationTile({super.key, required this.item, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = AppTheme.colorScheme(context);
    return Container(
      decoration: BoxDecoration(
        color: colorScheme.surfaceDim,
          border: Border.all(
            color: Colors.transparent
          ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: onPressed,
        child: ListTile(
          title: Text(
            item.name,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.roboto(fontSize: 14, color: colorScheme.scrim),
          ),
          trailing: IconTrailing(onPressed: onPressed),
          contentPadding: EdgeInsets.only(right: 5, left: 5),
        ),
      ),
    );
  }
}
