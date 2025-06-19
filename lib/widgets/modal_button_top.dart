import 'package:flutter/material.dart';
import 'package:ieca_mobile/util/app_theme.dart';

class ModalButtonTop extends StatelessWidget {
  const ModalButtonTop({super.key});

  @override
  Widget build(BuildContext context) {
    final colorBar = AppTheme.colorBackgroundAppBar(context);
    return InkWell(
      onTap: () => Navigator.pop(context),
      child: Column(
        spacing: 5,
        children: [
          const SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.only(top: 20),
            width: 100,
            height: 13,
            decoration: BoxDecoration(
              color: colorBar,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ],
      ),
    );
  }
}
