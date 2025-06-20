import 'package:google_fonts/google_fonts.dart';
import 'package:ieca_mobile/l10n/app_localizations.dart';
import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/repository/language_section_repository.dart';
import 'package:ieca_mobile/repository/preference_repository.dart';
import 'package:ieca_mobile/seeders/portugues/_import.dart';
import 'package:ieca_mobile/util/app_icon_data.dart';
import 'package:ieca_mobile/util/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:ieca_mobile/widgets/_import.dart';
import 'package:ieca_mobile/widgets/logo_ieca.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ValueNotifier<LanguageSection> _languageSection = ValueNotifier(LanguageSectionSeeder.PORTUGUES,);
  ValueNotifier<List<LanguageSection>> _languageSections = ValueNotifier([]);
  final _languageSectionRepository = LanguageSectionRepository();
  final _preferenceRepository = PreferenceRepository();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _initData();
    });
    super.initState();
  }

  _initData() async {
    _languageSections.value = await _languageSectionRepository.getAll();
    _languageSection.value = await _languageSectionRepository.getLanguage();
  }

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
      body: ListenableBuilder(
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
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                width: MediaQuery.of(context).size.width,
                child: ValueListenableBuilder<List<LanguageSection>>(
                  valueListenable: _languageSections,
                  builder: (_, _, _) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Secção do hinário",
                          style: GoogleFonts.roboto(fontSize: 15),
                        ),
                        ValueListenableBuilder<LanguageSection>(
                          valueListenable: _languageSection,
                          builder: (_, _, _) {
                            return DropdownButton<LanguageSection>(
                              isExpanded: true,
                              value: _languageSection.value,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: _languageSections.value.map((LanguageSection item,) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item.name),
                                    );
                                  }).toList(),
                              onChanged: (LanguageSection? newValue) {
                                if (newValue != null) {
                                  _languageSection.value = newValue;
                                  _preferenceRepository.changeLanguage(newValue);
                                }
                              },
                            );
                          },
                        ),
                      ],
                    );
                  },
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
        },
      ),
    );
  }
}
