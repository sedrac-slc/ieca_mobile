import 'package:google_fonts/google_fonts.dart';
import 'package:ieca_mobile/enums/_import.dart';
import 'package:ieca_mobile/l10n/app_localizations.dart';
import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/repository/_import.dart';
import 'package:ieca_mobile/screens/hymns_content_screen.dart';
import 'package:ieca_mobile/util/app_theme.dart';
import 'package:ieca_mobile/widgets/_import.dart';
import 'package:flutter/material.dart';

class HymnsScreen extends StatefulWidget {
  const HymnsScreen({super.key});

  @override
  State<HymnsScreen> createState() => _HymnsScreenState();
}

class _HymnsScreenState extends State<HymnsScreen> {
  final ValueNotifier< Map<HymnsGroup, Map<HymnsNumber, List<HymnsContent>>> >  _hymnsSearch = ValueNotifier({},);
  final ValueNotifier<List<HymnsGroup>> _hymnsGroup = ValueNotifier([]);
  final ValueNotifier<bool> _isSearch = ValueNotifier(false);
  final ValueNotifier<int> _badgeItem = ValueNotifier(0);
  final _hymnsGroupRepository = HymnsGroupRepository();

  _initData() async {
    _hymnsGroup.value = await _hymnsGroupRepository.getAll();
  }

  _changeBadgeItem(int pos) async {
    _badgeItem.value = pos;
    if(pos == BadgeHymns.NORMAL) await _initData();
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _initData();
    });
    super.initState();
  }

  @override
  void dispose() {
    _hymnsSearch.dispose();
    _hymnsGroup.dispose();
    _badgeItem.dispose();
    _isSearch.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorBar = AppTheme.colorAppBar(context);
    return Scaffold(
      appBar: AppBar(
        title: TextTitleBar(text: AppLocalizations.of(context)!.hymns, color: Colors.white,),
        centerTitle: true,
        actions: <Widget>[const ButtonSetting()],
        backgroundColor: colorBar,
      ),
      body: Column(
        spacing: 10,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 8.0, left: 15, right: 15, bottom: 10),
            color: colorBar,
            child: InputSearch(
              onSearch: (text) async {
                _hymnsSearch.value = await _hymnsGroupRepository.getSearch(text);
                if(!_isSearch.value) _isSearch.value = true;
              },
              onClear: () async {
                await _initData();
                _isSearch.value = false;
              },
            ),
          ),

          ValueListenableBuilder(
            valueListenable: _isSearch,
            builder: (context, value, child) {
              return value ? Center(
                child: Text("Resultados da pesquisa"),
              ) : ValueListenableBuilder<int>(
                  valueListenable: _badgeItem,
                  builder: (context, value, child) {
                    return BadgeContainer(
                      text: "Tipo",
                      padding: 3,
                      children: [
                        BadgeItem(text: "Normal", isSelected: _badgeItem.value == BadgeHymns.NORMAL, onClick: () async {
                          await _changeBadgeItem(BadgeHymns.NORMAL);
                        },),
                        BadgeItem(text: "Doxologias", isSelected: _badgeItem.value == BadgeHymns.DOXOLOGY, onClick: () async {
                          await _changeBadgeItem(BadgeHymns.DOXOLOGY);
                        },),
                        BadgeItem(text: "Adicionais", isSelected: _badgeItem.value == BadgeHymns.ADDITIONAL, onClick: () async {
                          await _changeBadgeItem(BadgeHymns.ADDITIONAL);
                        },),
                      ],
                    );
                  }
              );
            }
          ),

          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 8.0, left: 15, right: 15, bottom: 10),
              child: ValueListenableBuilder<bool>(
                valueListenable: _isSearch,
                builder: (_, value, _) {
                  return !value
                      ? ValueListenableBuilder<int>(
                      valueListenable: _badgeItem,
                      builder: (context, value, child) {
                        if(value == BadgeHymns.ADDITIONAL) return _PanelHymns(key: ValueKey(BadgeHymns.ADDITIONAL), type: BadgeHymns.ADDITIONAL,);
                        if(value == BadgeHymns.DOXOLOGY) return _PanelHymns(key: ValueKey(BadgeHymns.DOXOLOGY), type: BadgeHymns.DOXOLOGY,);
                        return ValueListenableBuilder<List<HymnsGroup>>(
                          valueListenable: _hymnsGroup,
                          builder: (_, _, _) {
                            return ListView.separated(
                              itemCount: _hymnsGroup.value.length,
                              separatorBuilder: (context, index) => Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                              itemBuilder: (context, index) {
                                final item = _hymnsGroup.value[index];
                                return HymnsGroupTile(
                                  hymnsGroup: item,
                                  onPressed: () {
                                    showModalBottomSheet(context: context, isScrollControlled: true, builder: (_) {
                                      return HymnsNumberModalBottomSheet(hymnsGroup: item,);
                                    },
                                    );
                                  },
                                );
                              },
                            );
                          },
                        );
                      }
                  )
                      : ValueListenableBuilder< Map<HymnsGroup, Map<HymnsNumber, List<HymnsContent>>> >(
                          valueListenable: _hymnsSearch,
                          builder: (_, _, _){
                            return _HymnMapSearch(item: _hymnsSearch.value,);
                          }
                      );
                },
              )
            ),
          ),
        ],
      ),
    );
  }
}

class _PanelHymns extends StatefulWidget{
  final int type;

  const _PanelHymns({super.key, required this.type});

  @override
  State<_PanelHymns> createState() => _PanelHymnsState();
}

class _PanelHymnsState extends State<_PanelHymns> {
  final ValueNotifier<List<HymnsNumber>> _hymnsNumbers = ValueNotifier([]);
  final _repository = HymnsNumberRepository();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _initData();
    });
    super.initState();
  }

  _initData() async {
    if(widget.type == BadgeHymns.DOXOLOGY) _hymnsNumbers.value = await _repository.getByDoxologies();
    if(widget.type == BadgeHymns.ADDITIONAL) _hymnsNumbers.value = await _repository.getByAdditional();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _hymnsNumbers,
        builder: (context, value, child) {
          if(value.isEmpty) return const ListEmpty();
          return GridHymns(hymnsNumbers: _hymnsNumbers.value,);
        }
    );
  }
}

class _HymnMapSearch extends StatelessWidget{
  final Map<HymnsGroup, Map<HymnsNumber, List<HymnsContent>>> item;

  const _HymnMapSearch({required this.item});

  @override
  Widget build(BuildContext context) {
    final entries = item.entries.toList();
    final color = AppTheme.colorAppBar(context);
    final colorDark = AppTheme.colorAppBarDark(context);
    return ListView.separated(
      itemCount: entries.length,
      separatorBuilder: (context, index) => const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
      itemBuilder: (context, index) {
        final entry = entries[index];
        final hymnsEntry = entry.value.entries.toList();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Text(entry.key.name, style: GoogleFonts.roboto(fontSize: 15),),
            const Divider(height: 5,),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 15,
                children: hymnsEntry.map((item){
                  return Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: color,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push( context,
                              MaterialPageRoute(
                                builder: (context) => HymnsContentScreen(hymnsNumber: item.key),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              NumberBackgroundCenter(number: item.key.num),
                              Icon(Icons.open_in_new, color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        spacing: 20,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: item.value.map((it) {
                          return Text(it.content.trim(), style: it.typeStanza == HymnsContentCode.CHOIR ? GoogleFonts.poppins(fontStyle: FontStyle.italic, color: colorDark) : null,);
                        }).toList(),
                      )
                    ],
                  );
                }).toList()
            )
          ],
        );
      },
    );
  }
}