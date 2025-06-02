import 'package:ieca_mobile/l10n/app_localizations.dart';
import 'package:ieca_mobile/screens/navigation_bar/_import.dart';
import 'package:flutter/material.dart';
import 'package:ieca_mobile/util/AppIconData.dart';

class PageScreen extends StatefulWidget {
  const PageScreen({super.key});

  @override
  State<PageScreen> createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  ValueNotifier<int> currentPage = ValueNotifier(0);

  final List<WidgetBuilder> _pages = [
    (_) => const HomeScreen(),
    (_) => const InvocationScreen(),
    (_) => const HymnsScreen(),
    (_) => const LitaniesScreen(),
    (_) => const SettingsScreen(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    currentPage.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        physics: const ClampingScrollPhysics(),
        controller: _pageController,
        itemCount: _pages.length,
        onPageChanged: (page) => currentPage.value = page,
        itemBuilder: (context, index) => _pages[index](context),
      ),
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: currentPage,
        builder: (_, _, _) {
          return NavigationBar(
            height: 70,
            elevation: 0,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
            selectedIndex: currentPage.value,
            destinations: [
              NavigationDestination(icon: Icon(AppIconData.home), label: AppLocalizations.of(context)!.home,),
              NavigationDestination(icon: Icon(AppIconData.invocation), label: AppLocalizations.of(context)!.invocation,),
              NavigationDestination(icon: Icon(AppIconData.hymns), label: AppLocalizations.of(context)!.hymns,),
              NavigationDestination(icon: Icon(AppIconData.litanies), label: AppLocalizations.of(context)!.litanies,),
              NavigationDestination(icon: Icon(AppIconData.psalms), label: AppLocalizations.of(context)!.psalms,),
            ],
            onDestinationSelected: (page) {
              _pageController.animateToPage(
                page,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOut,
              );
            },
          );
        },
      ),
    );
  }
}
