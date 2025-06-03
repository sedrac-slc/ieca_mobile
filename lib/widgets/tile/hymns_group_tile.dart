import 'package:flutter/material.dart';
import 'package:ieca_mobile/util/AppTheme.dart';
import 'package:ieca_mobile/models/HymnsGroup.dart';

class HymnsGroupTile extends StatelessWidget {
  final HymnsGroup hymnsGroup;
  final Function() onPressed;

  const HymnsGroupTile({super.key, required this.hymnsGroup, required this.onPressed});

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
        title: Text(
          hymnsGroup.name,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 13),
        ),
        trailing: SizedBox(
          width: 120,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                  height: 30,
                  decoration: BoxDecoration(
                    color: colorScheme.primary,
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: Center(
                    child: Text(
                      "${hymnsGroup.beginning} - ${hymnsGroup.finished}",
                      style: TextStyle(color: colorScheme.onPrimary),
                    ),
                  ),
                ),
              ),
              IconButton(onPressed: onPressed, icon: Icon(Icons.navigate_next_outlined))
            ],
          ),
        ),
        contentPadding: EdgeInsets.only(right: 0, left: 5),
      ),
    );
  }
}
