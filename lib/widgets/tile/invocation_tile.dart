import 'package:flutter/material.dart';
import 'package:ieca_mobile/models/InvocationTitle.dart';
import 'package:ieca_mobile/theme/theme.dart';

class InvocationTile extends StatelessWidget {
  final InvocationTitle item;
  final Function() onPressed;

  const InvocationTile({super.key, required this.item, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    final ColorScheme colorScheme = isDarkMode ? MaterialTheme.darkScheme() : MaterialTheme.lightScheme();

    return Container(
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHigh,
          border: Border.all(
            color: Colors.transparent
          ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(
          item.name,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 13),
        ),
        trailing: IconButton(onPressed: onPressed, icon: Icon(Icons.navigate_next_outlined)),
        contentPadding: EdgeInsets.only(right: 0, left: 20),
      ),
    );
  }
}
