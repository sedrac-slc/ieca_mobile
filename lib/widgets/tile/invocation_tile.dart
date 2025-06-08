import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieca_mobile/models/InvocationTitle.dart';
import 'package:ieca_mobile/util/AppTheme.dart';

class InvocationTile extends StatelessWidget {
  final InvocationTitle item;
  final Function()? onPressed;

  const InvocationTile({super.key, required this.item, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = AppTheme.colorScheme(context);
    final colorBar = AppTheme.colorBackgroundAppBar(context);
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
            item.name,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.poppins(fontSize: 13),
          ),
          trailing: Container(
            constraints: BoxConstraints(minHeight: 10, minWidth: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: colorBar,
            ),
            child: IconButton(
                onPressed: onPressed,
                icon: Icon(Icons.navigate_next_outlined, color: Colors.white)
            ),
          ),
          contentPadding: EdgeInsets.only(right: 0, left: 20),
        ),
      ),
    );
  }
}
