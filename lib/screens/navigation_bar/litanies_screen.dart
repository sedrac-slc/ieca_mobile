import 'package:ieca_mobile/l10n/app_localizations.dart';
import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/repository/LitanyTitleRepository.dart';
import 'package:ieca_mobile/util/AppTheme.dart';
import 'package:ieca_mobile/widgets/_import.dart';
import 'package:flutter/material.dart';
import 'package:ieca_mobile/widgets/search/_import.dart';

class LitaniesScreen extends StatefulWidget {
  const LitaniesScreen({super.key});

  @override
  State<LitaniesScreen> createState() => _LitaniesScreenState();
}

class _LitaniesScreenState extends State<LitaniesScreen> {
  final ValueNotifier<Map<LitanyTitle, List<LitanyContent>>> _litanySearch = ValueNotifier({},);
  final ValueNotifier<List<LitanyTitle>> _litanyTitles = ValueNotifier([]);
  final ValueNotifier<bool> _isSearch = ValueNotifier(false);
  final _repository = LitanyTitleRepository();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _initData();
    });
    super.initState();
  }

  _initData() async {
    _litanyTitles.value = await _repository.getAll();
  }

  @override
  void dispose() {
    _litanySearch.dispose();
    _litanyTitles.dispose();
    _isSearch.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorBar = AppTheme.colorBackgroundAppBar(context);
    return Scaffold(
      appBar: AppBar(
        title: TextTitleBar(text: AppLocalizations.of(context)!.litanies, color: Colors.white,),
        centerTitle: true,
        actions: <Widget>[
          const ButtonSetting()
        ],
        backgroundColor: colorBar,
      ),
      body: Column(
        spacing: 5,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 8.0, left: 15, right: 15, bottom: 10),
            color: colorBar,
            child: InputSearch(
              onSearch: (text) async {
                _litanySearch.value = await _repository.getSearch(text);
                if(!_isSearch.value) _isSearch.value = true;
              },
              onClear: () async {
              await _initData();
              _isSearch.value = false;
              },
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 8.0, left: 15, right: 15, bottom: 10,),
              child: ValueListenableBuilder<bool>(
                  valueListenable: _isSearch,
                  builder: (_, value, _) {
                    return !value
                        ? ValueListenableBuilder<List<LitanyTitle>>(
                            valueListenable: _litanyTitles,
                            builder: (_, _, _)  => _PanelLitany(litanyTitles: _litanyTitles.value))
                        : ValueListenableBuilder<Map<LitanyTitle, List<LitanyContent>>>(
                            valueListenable: _litanySearch,
                            builder: (_, _, _) => _PanelLitanySearch(map: _litanySearch.value));
                  }
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PanelLitany extends StatelessWidget{
  final List<LitanyTitle> litanyTitles;

  const _PanelLitany({required this.litanyTitles});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: litanyTitles.length,
      separatorBuilder: (context, index) => Padding(padding: EdgeInsets.symmetric(vertical: 5)),
      itemBuilder: (context, index) {
        final item = litanyTitles[index];
        return LitanyTile(litanyTitle: item, onPressed: () {
          showModalBottomSheet(context: context, isScrollControlled: true, builder: (_) {
            return LitanyContentModalBottomSheet(litanyTitle: item);
          });
        });
      },
    );
  }
}

class _PanelLitanySearch extends StatelessWidget {
  final Map<LitanyTitle, List<LitanyContent>> map;

  const _PanelLitanySearch({required this.map});

  @override
  Widget build(BuildContext context) {
    final entries = map.entries.toList();
    return ListView.separated(
      itemCount: entries.length,
      separatorBuilder: (context, index) => const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
      itemBuilder: (context, index) {
        final entry = entries[index];
        return LitanyMapSearch(item: entry,);
      },
    );
  }
}