import 'package:flutter/material.dart';
import 'package:ieca_mobile/l10n/app_localizations.dart';

class ListEmpty extends StatelessWidget {
  const ListEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          Icon(Icons.info_outline, color: Colors.grey, size: 80,),
          Text(
            AppLocalizations.of(context)?.noInformation ?? "Não tem informação",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
