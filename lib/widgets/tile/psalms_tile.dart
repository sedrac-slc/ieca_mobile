import 'package:flutter/material.dart';
import 'package:ieca_mobile/models/PsalmsTitle.dart';
import 'package:ieca_mobile/util/AppTheme.dart';
import 'package:ieca_mobile/widgets/number_background_leading.dart';

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
      child: ListTile(
        leading: NumberBackgroundLeading(number: psalmsTitle.position),
        title: Text(
          psalmsTitle.name,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 13),
        ),
        trailing: IconButton(onPressed: onPressed, icon: Icon(Icons.navigate_next_outlined)),
        contentPadding: EdgeInsets.only(right: 0, left: 5),
      ),
    );
  }
}
