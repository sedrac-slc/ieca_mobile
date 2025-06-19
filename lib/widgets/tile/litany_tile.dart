import 'package:flutter/material.dart';
import 'package:ieca_mobile/models/litany_title.dart';
import 'package:ieca_mobile/util/app_theme.dart';
import 'package:ieca_mobile/widgets/_import.dart';

class LitanyTile extends StatelessWidget {
  final LitanyTitle litanyTitle;
  final Function() onPressed;

  const LitanyTile({super.key, required this.litanyTitle, required this.onPressed});

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
          leading: NumberBackgroundLeading(number: litanyTitle.position),
          title: Text(
            litanyTitle.name,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14),
          ),
          trailing: IconTrailing(onPressed: onPressed),
          contentPadding: EdgeInsets.only(right: 5, left: 5),
        ),
      ),
    );
  }
}
