import 'package:ieca_mobile/l10n/app_localizations.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:flutter/material.dart';
import 'package:ieca_mobile/widgets/logo_ieca.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _preferenceRepository = PreferenceRepository();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _initData();
    });
    super.initState();
  }

  _initData() async {}

  @override
  Widget build(BuildContext context) {
    final colorBar = AppTheme.colorAppBar(context);
    return Scaffold(
      appBar: AppBar(
        actions: [const LogoIeca()],
        title: const TextTitleBar(text: "Hinário IECA", color: Colors.white),
        centerTitle: true,
        backgroundColor: colorBar,
      ),
      drawer: SettingDrawer(),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListenableBuilder(
            listenable: _preferenceRepository,
            builder: (context, child) {
              return Column(
                spacing: 2,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    decoration: BoxDecoration(
                      color: colorBar,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        ItemInfo(
                          icon: AppIconData.invocation,
                          text:
                              AppLocalizations.of(context)?.invocation ??
                              "Invocatória",
                          total: 7,
                        ),
                        const SizedBox(width: 15),
                        ItemInfo(
                          icon: AppIconData.litanies,
                          text:
                              AppLocalizations.of(context)?.litanies ?? "Litanias",
                          total: 10,
                        ),
                        const SizedBox(width: 15),
                        ItemInfo(
                          icon: AppIconData.psalms,
                          text: AppLocalizations.of(context)?.psalms ?? "Salmos",
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
              );
            }
          ),
        ),
      ),
    );
  }
}
