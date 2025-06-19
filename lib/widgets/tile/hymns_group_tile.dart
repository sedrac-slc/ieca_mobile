import 'package:flutter/material.dart';
import 'package:ieca_mobile/util/app_theme.dart';
import 'package:ieca_mobile/models/hymns_group.dart';

class HymnsGroupTile extends StatelessWidget {
  final HymnsGroup hymnsGroup;
  final Function() onPressed;

  const HymnsGroupTile({super.key, required this.hymnsGroup, required this.onPressed});

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
            hymnsGroup.name,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14),
          ),
          trailing: Container(
            padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
            height: 30,
            width: 80,
            decoration: BoxDecoration(
              color: colorBar,
              borderRadius: BorderRadius.circular(40)
            ),
            child: Center(
              child: Text(
                "${hymnsGroup.beginning} - ${hymnsGroup.finished}",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          contentPadding: EdgeInsets.only(right: 10, left: 10),
        ),
      ),
    );
  }
}
