import 'package:ieca_mobile/l10n/app_localizations.dart';
import 'package:ieca_mobile/util/AppIconData.dart';
import 'package:ieca_mobile/util/AppTheme.dart';
import 'package:flutter/material.dart';
import 'package:ieca_mobile/widgets/_import.dart';
import 'package:ieca_mobile/widgets/logo_ieca.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorBar = AppTheme.colorBackgroundAppBar(context);
    return Scaffold(
      appBar: AppBar(
        leading: const LogoIeca(),
        title: const TextTitleBar(text: "Hinário IECA", color: Colors.white),
        centerTitle: true,
        actions: <Widget>[const ButtonSetting()],
        backgroundColor: colorBar,
      ),
      body: Column(
        spacing: 2,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              color: colorBar,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            height: 125,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                ItemInfo(
                  icon: AppIconData.invocation,
                  text: AppLocalizations.of(context)!.invocation,
                  total: 7,
                ),
                const SizedBox(width: 15),
                ItemInfo(
                  icon: AppIconData.litanies,
                  text: AppLocalizations.of(context)!.litanies,
                  total: 10,
                ),
                const SizedBox(width: 15),
                ItemInfo(
                  icon: AppIconData.psalms,
                  text: AppLocalizations.of(context)!.psalms,
                  total: 14,
                ),
              ],
            ),
          ),
          BadgeContainer(
            text: "Histórico",
            children: [
              BadgeItem(text: "Hoje", isSelected: true),
              BadgeItem(text: "Ontem"),
              BadgeItem(text: "72 Horas"),
              BadgeItem(text: "1 Semana"),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                HistoricGroup(title: "Hinos", children: []),
                HistoricGroup(title: "Litanias", children: []),
                HistoricGroup(title: "Salmos", children: []),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
