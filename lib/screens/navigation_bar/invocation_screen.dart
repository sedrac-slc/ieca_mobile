import 'package:ieca_mobile/l10n/app_localizations.dart';
import 'package:ieca_mobile/util/app_theme.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:flutter/material.dart';

class InvocationScreen extends StatefulWidget {
  const InvocationScreen({super.key});

  @override
  State<InvocationScreen> createState() => _InvocationScreenState();
}

class _InvocationScreenState extends State<InvocationScreen> {
  final ValueNotifier<Map<InvocationTitle, List<InvocationContent>>> _invocationSearch = ValueNotifier({},);
  final ValueNotifier<List<InvocationTitle>> _invocationTitles = ValueNotifier([],);
  final ValueNotifier<bool> _isSearch = ValueNotifier(false);
  final _repository = InvocationTitleRepository();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _initData();
    });
    super.initState();
  }

  _initData() async {
    _invocationTitles.value = await _repository.getAll();
  }

  @override
  void dispose() {
    _invocationSearch.dispose();
    _invocationTitles.dispose();
    _isSearch.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorBar = AppTheme.colorAppBar(context);
    return Scaffold(
      appBar: AppBar(
        title: TextTitleBar(text: AppLocalizations.of(context)!.invocation, color: Colors.white,),
        centerTitle: true,
        actions: <Widget>[const ButtonSetting()],
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
                  _invocationSearch.value = await _repository.getSearch(text);
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
              padding: const EdgeInsets.only(top: 8.0, left: 15, right: 15, bottom: 10),
              child: ValueListenableBuilder<bool>(
                valueListenable: _isSearch,
                builder: (_, value, _) {
                  return !value
                      ? ValueListenableBuilder<List<InvocationTitle>>(
                        valueListenable: _invocationTitles,
                        builder: (_, value, _)  => value.isEmpty ? ListEmpty() : _PanelInvocation(invocationTitles: value)
                      )
                      : ValueListenableBuilder<Map<InvocationTitle, List<InvocationContent>>>(
                          valueListenable: _invocationSearch,
                          builder: (_, _, _) => _PanelInvocationSearch(map: _invocationSearch.value)
                      );
                }
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _PanelInvocation extends StatelessWidget{
  final List<InvocationTitle> invocationTitles;

  const _PanelInvocation({required this.invocationTitles});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: invocationTitles.length,
      separatorBuilder: (context, index) => const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
      itemBuilder: (context, index) {
        final item = invocationTitles[index];
        return InvocationTile(item: item, onPressed: () {
          showModalBottomSheet(context: context, isScrollControlled: true, builder: (_)  {
            return InvocationContentModalBottomSheet(invocationTitle: item);
          });
        });
      },
    );
  }
}

class _PanelInvocationSearch extends StatelessWidget {
  final Map<InvocationTitle, List<InvocationContent>> map;

  const _PanelInvocationSearch({required this.map});

  @override
  Widget build(BuildContext context) {
    final entries = map.entries.toList();
    return ListView.separated(
      itemCount: entries.length,
      separatorBuilder: (context, index) => const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
      itemBuilder: (context, index) {
        final entry = entries[index];
        return InvocationMapSearch(item: entry,);
      },
    );
  }
}