import 'package:ieca_mobile/l10n/app_localizations.dart';
import 'package:ieca_mobile/screens/navigation_bar/_import.dart';
import 'package:flutter/material.dart';
import 'package:ieca_mobile/util/app_icon_data.dart';
import 'package:ieca_mobile/util/app_theme.dart';

class PageScreen extends StatefulWidget {
  const PageScreen({super.key});

  @override
  State<PageScreen> createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;

  final List<WidgetBuilder> _pages = [
    (_) => const HomeScreen(),
    (_) => const InvocationScreen(),
    (_) => const HymnsScreen(),
    (_) => const LitaniesScreen(),
    (_) => const PsalmsScreen(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onChangePage(int n) {
    setState(() {
      currentPage = n;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorBar = AppTheme.colorAppBar(context);
    return Scaffold(
      body: PageView.builder(
        physics: const ClampingScrollPhysics(),
        controller: _pageController,
        itemCount: _pages.length,
        onPageChanged: onChangePage,
        itemBuilder: (context, index) => _pages[index](context),
      ),
      bottomNavigationBar: NavigationBar(
            height: 70,
            elevation: 0,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
            selectedIndex: currentPage,
            destinations: [
              NavigationDestination(icon: Icon(AppIconData.home), label: AppLocalizations.of(context)!.home,),
              NavigationDestination(icon: Icon(AppIconData.invocation), label: AppLocalizations.of(context)!.invocation,),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: NavigationDestination(
                  icon: Container(
                    constraints: BoxConstraints(minWidth: 50, minHeight: 50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: colorBar
                    ),
                    child: Icon(AppIconData.hymns, color: Colors.white, size: 40,),
                  ),
                  label: "",
                ),
              ),
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
          )
    );
  }
}
