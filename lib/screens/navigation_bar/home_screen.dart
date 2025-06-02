import 'package:ieca_mobile/l10n/app_localizations.dart';
import 'package:ieca_mobile/util/AppAsset.dart';
import 'package:ieca_mobile/util/AppIconData.dart';
import 'package:ieca_mobile/util/AppTheme.dart';
import 'package:ieca_mobile/widgets/_import.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = AppTheme.colorScheme(context);
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          width: 10,
          height: 10,
          child: Image.asset(AppAsset.logo, width: 10, height: 10),
        ),
        title: Text("Bem vindo"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 10, left: 15, right: 15),
        child: Column(
          spacing: 20,
          children: [
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 1.8,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ItemInfo(
                  icon: AppIconData.invocation,
                  text: AppLocalizations.of(context)!.invocation,
                  total: 7,
                ),
                ItemInfo(
                  icon: AppIconData.litanies,
                  text: AppLocalizations.of(context)!.litanies,
                  total: 10,
                ),
                ItemInfo(
                  icon: AppIconData.psalms,
                  text: AppLocalizations.of(context)!.psalms,
                  total: 14,
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: colorScheme.onTertiary,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: colorScheme.primaryContainer),
              ),
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Informações do hinos",
                      style: TextStyle(
                        color: colorScheme.outline,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  HymnsInfo(text: "Em português", total: 316),
                  HymnsInfo(text: "Em umbundo", total: 316),
                  HymnsInfo(text: "Em kimbundo", total: 110),
                  HymnsInfo(text: "Em Kikongo", total: 10),
                  HymnsInfo(text: "Em Kwanyama", total: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
