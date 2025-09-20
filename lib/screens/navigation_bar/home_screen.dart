import 'package:ieca_mobile/l10n/app_localizations.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:flutter/material.dart';
import 'package:ieca_mobile/widgets/logo_ieca.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _invocationTitleRepository = InvocationTitleRepository();
  final _hymnsNumberRepository = HymnsNumberRepository();
  final _litanyTitleRepository = LitanyTitleRepository();
  final _psalmsTitleRepository = PsalmsTitleRepository();
  final _badgeFavourite = ValueNotifier(FavouriteType.HYMNS);
  final _statisticItem = ValueNotifier(StatisticItem());

  _initData() async {
    _statisticItem.value = StatisticItem(
      invocationCount: await _invocationTitleRepository.count(),
      litanyCount: await _litanyTitleRepository.count(),
      psalmsCount: await _psalmsTitleRepository.count(),
      hymnsCount: await _hymnsNumberRepository.count(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorBar = AppTheme.colorAppBar(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = (screenWidth - 60) / 2;

    return Scaffold(
      appBar: AppBar(
        actions: [const LogoIeca()],
        title: TextTitleBar(text: AppLocalizations.of(context)?.iecaHymnal ?? "Hinário IECA", color: Colors.white),
        centerTitle: true,
        backgroundColor: colorBar,
        iconTheme: const IconThemeData(color: Colors.white,),
      ),
      drawer: SettingDrawer(),
      body: Consumer<PreferenceRepository>(
          builder: (context, value, child) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              await _initData();
            });
            return Container(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ValueListenableBuilder(
                    valueListenable: _statisticItem,
                    builder: (context, value, snapshot) {
                      return Column(
                        spacing: 2,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: colorBar,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Wrap(
                              spacing: 20,
                              runSpacing: 15,
                              children: [
                                SizedBox(
                                  width: itemWidth,
                                  child: ItemInfo(
                                    icon: AppIconData.hymns,
                                    text: AppLocalizations.of(context)?.hymns ?? "Hinos",
                                    total: value.hymnsCount,
                                  ),
                                ),
                                SizedBox(
                                  width: itemWidth,
                                  child: ItemInfo(
                                    icon: AppIconData.invocation,
                                    text: AppLocalizations.of(context)?.invocation ?? "Invocatória",
                                    total: value.invocationCount,
                                  ),
                                ),
                                SizedBox(
                                  width: itemWidth,
                                  child: ItemInfo(
                                    icon: AppIconData.litanies,
                                    text: AppLocalizations.of(context)?.litanies ?? "Litanias",
                                    total: value.litanyCount,
                                  ),
                                ),
                                SizedBox(
                                  width: itemWidth,
                                  child: ItemInfo(
                                    icon: AppIconData.psalms,
                                    text: AppLocalizations.of(context)?.psalms ?? "Salmos",
                                    total: value.psalmsCount,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          ValueListenableBuilder(
                              valueListenable: _badgeFavourite,
                              builder: (context, value, child) {
                                return Expanded(
                                  child: ListView( children: [
                                    BadgeContainer(
                                      text: AppLocalizations.of(context)?.favourites ?? "Favouritos",
                                      margin: const EdgeInsets.symmetric(vertical: 10),
                                      children: [
                                        BadgeItem(text: AppLocalizations.of(context)?.hymns ?? "Hinos", isSelected: value == FavouriteType.HYMNS, onClick: () => _badgeFavourite.value = FavouriteType.HYMNS),
                                        BadgeItem(text: AppLocalizations.of(context)?.litanies ?? "Litanias", isSelected: value == FavouriteType.LITANY, onClick: () => _badgeFavourite.value = FavouriteType.LITANY),
                                      ],
                                    ),

                                    Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: FavouriteContainer(favouriteType: value.toString())
                                    )
                                  ],),
                                );
                              }
                          )




                        ],
                      );
                    }
                ),
              ),
            );
          }
      ),
    );
  }
}