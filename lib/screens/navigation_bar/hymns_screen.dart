import 'package:ieca_mobile/enums/_import.dart';
import 'package:ieca_mobile/l10n/app_localizations.dart';
import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/repository/_import.dart';
import 'package:ieca_mobile/util/app_theme.dart';
import 'package:ieca_mobile/widgets/_import.dart';
import 'package:flutter/material.dart';

class HymnsScreen extends StatefulWidget {
  const HymnsScreen({super.key});

  @override
  State<HymnsScreen> createState() => _HymnsScreenState();
}

class _HymnsScreenState extends State<HymnsScreen> {
  final ValueNotifier<List<HymnsGroup>> _hymnsGroup = ValueNotifier([]);
  final ValueNotifier<int> _badgeItem = ValueNotifier(0);
  final _hymnsGroupRepository = HymnsGroupRepository();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _initData();
    });
    super.initState();
  }

  _initData() async {
    _hymnsGroup.value = await _hymnsGroupRepository.getAll();
  }

  _changeBadgeItem(int pos) async {
    _badgeItem.value = pos;
    if(pos == BadgeHymns.NORMAL) await _initData();
  }

  @override
  Widget build(BuildContext context) {
    final colorBar = AppTheme.colorBackgroundAppBar(context);
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
            child: InputSearch(onSearch: (text) {

            },),
          ),

          ValueListenableBuilder<int>(
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
          ),

          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 8.0, left: 15, right: 15, bottom: 10),
              child: ValueListenableBuilder<int>(
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
              ),
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
          return GridHymns(hymnsNumbers: _hymnsNumbers.value,);
        }
    );
  }
}