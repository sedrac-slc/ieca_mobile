import 'package:ieca_mobile/l10n/app_localizations.dart';
import 'package:ieca_mobile/models/InvocationTitle.dart';
import 'package:ieca_mobile/repository/InvocationTitleRepository.dart';
import 'package:ieca_mobile/util/AppTheme.dart';
import 'package:ieca_mobile/widgets/_import.dart';
import 'package:flutter/material.dart';

class InvocationScreen extends StatefulWidget {
  const InvocationScreen({super.key});

  @override
  State<InvocationScreen> createState() => _InvocationScreenState();
}

class _InvocationScreenState extends State<InvocationScreen> {
  final ValueNotifier<List<InvocationTitle>> _invocationTitles = ValueNotifier([],);

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _initData();
    });
    super.initState();
  }

  _initData() async {
    final repository = InvocationTitleRepository();
    _invocationTitles.value = await repository.getAll();
  }

  @override
  Widget build(BuildContext context) {
    final colorBar = AppTheme.colorBackgroundAppBar(context);
    return Scaffold(
      appBar: AppBar(
        title: TextTitleBar(text: AppLocalizations.of(context)!.invocation, color: Colors.white,),
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
            child: InputSearch(),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 8.0, left: 15, right: 15, bottom: 10),
              child: ValueListenableBuilder<List<InvocationTitle>>(
                valueListenable: _invocationTitles,
                builder: (_, _, _) {
                  return ListView.separated(
                    itemCount: _invocationTitles.value.length,
                    separatorBuilder: (context, index) => Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                    itemBuilder: (context, index) {
                      final item = _invocationTitles.value[index];
                      return InvocationTile(item: item, onPressed: () {
                        showModalBottomSheet(context: context, builder: (_)  {
                          return InvocationContentModalBottomSheet(invocationTitle: item);
                        });
                      });
                    },
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
