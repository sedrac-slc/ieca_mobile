import 'package:flutter/material.dart';
import 'package:ieca_mobile/models/LitanyTitle.dart';
import 'package:ieca_mobile/util/AppTheme.dart';

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
      child: ListTile(
        leading: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: colorScheme.primary,
            borderRadius: BorderRadius.circular(50),
          ),
          height: 30,
          width: 30,
          child: Text(litanyTitle.position.toString(), style: TextStyle(color: colorScheme.scrim, fontWeight: FontWeight.w900),),
        ),
        title: Text(
          litanyTitle.name,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 13),
        ),
        trailing: IconButton(onPressed: onPressed, icon: Icon(Icons.navigate_next_outlined)),
        contentPadding: EdgeInsets.only(right: 0, left: 5),
      ),
    );
  }
}
