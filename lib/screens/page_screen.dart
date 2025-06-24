import 'package:ieca_mobile/l10n/app_localizations.dart';
import 'package:ieca_mobile/screens/navigation_bar/_import.dart';
import 'package:flutter/material.dart';
import 'package:ieca_mobile/util/app_icon_data.dart';
import 'package:ieca_mobile/util/app_theme.dart';

class PageScreen extends StatefulWidget {
  final List<WidgetBuilder> pages;

  const PageScreen({super.key, this.pages = const []});

  @override
  State<PageScreen> createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;

  List<WidgetBuilder> _pages = [
    (_) => const HomeScreen(),
    (_) => const InvocationScreen(),
    (_) => const HymnsScreen(),
    (_) => const LitaniesScreen(),
    (_) => const PsalmsScreen(),
  ];

  @override
  void initState() {
    if(widget.pages.length > 0) _pages = widget.pages;
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onChangePage(int n) {
    currentPage = n;
    setState(() {});
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
              NavigationDestination(key: ValueKey(AppIconData.home), icon: Icon(AppIconData.home), label: AppLocalizations.of(context)?.home ?? "Inicio",),
              NavigationDestination(key: ValueKey(AppIconData.invocation), icon: Icon(AppIconData.invocation), label: AppLocalizations.of(context)?.invocation ?? "Invocatória",),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: NavigationDestination(
                  key: ValueKey(AppIconData.hymns),
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
              NavigationDestination(key: ValueKey(AppIconData.litanies), icon: Icon(AppIconData.litanies), label: AppLocalizations.of(context)?.litanies ?? "Litania",),
              NavigationDestination(key: ValueKey(AppIconData.psalms), icon: Icon(AppIconData.psalms), label: AppLocalizations.of(context)?.psalms ?? "Salmos",),
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
