import 'package:ieca_mobile/l10n/app_localizations.dart';
import 'package:ieca_mobile/repository/_import.dart';
import 'package:ieca_mobile/screens/_import.dart';
import 'package:ieca_mobile/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IecaApp extends StatefulWidget {
  const IecaApp({super.key});

  @override
  State<IecaApp> createState() => _IecaAppState();
}

class _IecaAppState extends State<IecaApp> {

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<PreferenceRepository>(
      builder: (context, value, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: Locale.fromSubtags(languageCode: value.language),
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: MaterialTheme.lightScheme(),
          ),
          darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: MaterialTheme.darkScheme()
          ),
          themeMode: ThemeMode.system,
          home: const PageScreen(),
          routes: {
            /* Screens for navigation bar */
            '/page': (context) => const PageScreen(),
            '/home': (context) => const HomeScreen(),
            '/hymns': (context) => const HymnsScreen(),
            '/litanies': (context) => const HymnsScreen(),
          },
        );
      }
    );
  }
}
