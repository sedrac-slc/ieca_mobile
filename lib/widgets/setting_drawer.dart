import 'package:ieca_mobile/l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class SettingDrawer extends StatefulWidget {
  SettingDrawer({super.key});

  @override
  State<SettingDrawer> createState() => _SettingDrawerState();
}

class _SettingDrawerState extends State<SettingDrawer> {
  ValueNotifier<LanguageSection> _languageSection = ValueNotifier(
    LanguageSectionSeeder.PORTUGUES,
  );
  ValueNotifier<List<LanguageSection>> _languageSections = ValueNotifier([]);

  final _languageSectionRepository = LanguageSectionRepository();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      _languageSections.value = await _languageSectionRepository.getAll();
      _languageSection.value = await _languageSectionRepository.getLanguage();
    });
  }

  @override
  Widget build(BuildContext context) {
    final _preferenceRepository = Provider.of<PreferenceRepository>(
      context,
      listen: true,
    );
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: ColorScheme.of(context).primary),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)?.settings ?? 'Definições',
                  style: TextStyle(color: Colors.white),
                ),
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Icon(Icons.close, color: Colors.white),
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: MediaQuery.of(context).size.width,
            child: ValueListenableBuilder<List<LanguageSection>>(
              valueListenable: _languageSections,
              builder: (_, _, _) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)?.hymnalSection ??
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
                          items:
                              _languageSections.value.map((
                                LanguageSection item,
                              ) {
                                return DropdownMenuItem(
                                  value: item,
                                  child: Text(item.name),
                                );
                              }).toList(),
                          onChanged: (LanguageSection? newValue) {
                            if (newValue != null) {
                              _languageSection.value = newValue;
                              _preferenceRepository.changeLanguageSectionHymnal(
                                newValue,
                              );
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

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)?.applicationLanguage ??
                      "Idioma do aplicativo",
                  style: GoogleFonts.roboto(fontSize: 15),
                ),
                DropdownButton<String>(
                  isExpanded: true,
                  value: _preferenceRepository.language,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: [
                    DropdownMenuItem(
                      value: "pt",
                      child: Text(
                        AppLocalizations.of(context)?.portuguese ?? "Português",
                      ),
                    ),
                    DropdownMenuItem(
                      value: "en",
                      child: Text(
                        AppLocalizations.of(context)?.english ?? "Inglês",
                      ),
                    ),
                  ],
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      _preferenceRepository.changeLanguage(newValue);
                    }
                  },
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)?.theme ?? "Tema",
                  style: GoogleFonts.roboto(fontSize: 15),
                ),
                DropdownButton<String>(
                  isExpanded: true,
                  value: _preferenceRepository.theme,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: [
                    DropdownMenuItem(
                      value: "light",
                      child: Text(
                        AppLocalizations.of(context)?.light ?? "Claro",
                      ),
                    ),
                    DropdownMenuItem(
                      value: "dark",
                      child: Text(
                        AppLocalizations.of(context)?.dark ?? "Escuro",
                      ),
                    ),
                  ],
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      _preferenceRepository.changeTheme(newValue);
                    }
                  },
                ),
              ],
            ),
          ),

          ListTile(title: Text("Sobre"), onTap: () {
            Navigator.pushNamed(context, '/about');
          },),

        ],
      ),
    );
  }
}
