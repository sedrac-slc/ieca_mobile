import 'package:flutter/material.dart';
import 'package:ieca_mobile/enums/_import.dart';
import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/util/app_theme.dart';

class LitanyContentItem extends StatelessWidget {
  final LitanyContent litanyContent;

  const LitanyContentItem({super.key, required this.litanyContent});

  @override
  Widget build(BuildContext context) {
    final colorBar = AppTheme.colorAppBarDark(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Text(litanyContent.litanyPerson(), style: TextStyle(color: colorBar, fontWeight: FontWeight.w700),),
            if (litanyContent.person == LitanyPerson.CONGREGATION) ...[
              _BackgroundPanel(
                  child: Text(litanyContent.content, style: TextStyle(fontWeight: FontWeight.w700),)
              )
            ] else ... [
              _BackgroundPanel(
                  child: Text(litanyContent.content)
              )
            ],
          ],
        ),
        Container(
            alignment: Alignment.bottomRight,
            child: Text(litanyContent.books, textAlign: TextAlign.right,)
        ),
      ],
    );
  }
}

class _BackgroundPanel extends StatelessWidget{
  final Widget child;

  const _BackgroundPanel({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          //color: Colors.grey.withAlpha(10),
          borderRadius: BorderRadius.circular(10)
      ),
      child: child,
    );
  }
}