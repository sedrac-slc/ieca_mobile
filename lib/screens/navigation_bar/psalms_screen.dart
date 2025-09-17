import 'package:ieca_mobile/l10n/app_localizations.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:flutter/material.dart';

class PsalmsScreen extends StatefulWidget {
  const PsalmsScreen({super.key});

  @override
  State<PsalmsScreen> createState() => _PsalmsScreenState();
}

class _PsalmsScreenState extends State<PsalmsScreen> {
  final ValueNotifier<Map<PsalmsTitle, List<PsalmsContent>>> _psalmsSearch = ValueNotifier({},);
  final ValueNotifier<List<PsalmsTitle>> _psalmsTitles = ValueNotifier([]);
  final ValueNotifier<bool> _isSearch = ValueNotifier(false);
  final _repository = PsalmsTitleRepository();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _initData();
    });
    super.initState();
  }

  _initData() async {
    _psalmsTitles.value = await _repository.getAll();
  }

  @override
  Widget build(BuildContext context) {
    final colorBar = AppTheme.colorAppBar(context);
    return Scaffold(
      appBar: AppBar(
        title: TextTitleBar(text: AppLocalizations.of(context)!.psalms, color: Colors.white,),
        centerTitle: true,
        backgroundColor: colorBar,
      ),
      drawer: SettingDrawer(),
      body: Column(
        spacing: 5,
        children: [
          Container(
              padding: const EdgeInsets.only(top: 8.0, left: 15, right: 15, bottom: 10),
              color: colorBar,
              child: InputSearch(
                onSearch: (text) async {
                  _psalmsSearch.value = await _repository.getSearch(text);
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
                        ? ValueListenableBuilder<List<PsalmsTitle>>(
                            valueListenable: _psalmsTitles,
                            builder: (_, value, _)  => value.isEmpty ? ListEmpty() : _PanelPsalms(psalmsTitles: _psalmsTitles.value)
                        )
                        : ValueListenableBuilder<Map<PsalmsTitle, List<PsalmsContent>>>(
                            valueListenable: _psalmsSearch,
                            builder: (_, _, _) => _PanelPsalmsSearch(map: _psalmsSearch.value)
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

class _PanelPsalms extends StatelessWidget{
  final List<PsalmsTitle> psalmsTitles;

  const _PanelPsalms({required this.psalmsTitles});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: psalmsTitles.length,
      separatorBuilder: (context, index) => Padding(padding: EdgeInsets.symmetric(vertical: 5)),
      itemBuilder: (context, index) {
        final item = psalmsTitles[index];
        return PsalmsTile(psalmsTitle: item, onPressed: () {
          showModalBottomSheet(context: context, isScrollControlled: true, builder: (_) {
            return PsalmsContentModalBottomSheet(psalmsTitle: item);
          });
        });
      },
    );
  }
}

class _PanelPsalmsSearch extends StatelessWidget {
  final Map<PsalmsTitle, List<PsalmsContent>> map;

  const _PanelPsalmsSearch({required this.map});

  @override
  Widget build(BuildContext context) {
    final entries = map.entries.toList();
    return ListView.separated(
      itemCount: entries.length,
      separatorBuilder: (context, index) => const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
      itemBuilder: (context, index) {
        final entry = entries[index];
        return PsalmsMapSearch(item: entry,);
      },
    );
  }
}