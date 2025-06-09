import 'package:ieca_mobile/l10n/app_localizations.dart';
import 'package:ieca_mobile/models/PsalmsTitle.dart';
import 'package:ieca_mobile/repository/PsalmsTitleRepository.dart';
import 'package:ieca_mobile/util/AppTheme.dart';
import 'package:ieca_mobile/widgets/_import.dart';
import 'package:flutter/material.dart';

class PsalmsScreen extends StatefulWidget {
  const PsalmsScreen({super.key});

  @override
  State<PsalmsScreen> createState() => _PsalmsScreenState();
}

class _PsalmsScreenState extends State<PsalmsScreen> {
  final ValueNotifier<List<PsalmsTitle>> _psalmsTitles = ValueNotifier([]);

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _initData();
    });
    super.initState();
  }

  _initData() async {
    final repository = PsalmsTitleRepository();
    _psalmsTitles.value = await repository.getAll();
  }

  @override
  Widget build(BuildContext context) {
    final colorBar = AppTheme.colorBackgroundAppBar(context);
    return Scaffold(
      appBar: AppBar(
        title: TextTitleBar(text: AppLocalizations.of(context)!.psalms, color: Colors.white,),
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
              padding: const EdgeInsets.only(top: 8.0, left: 15, right: 15, bottom: 10,),
              child: ValueListenableBuilder<List<PsalmsTitle>>(
                valueListenable: _psalmsTitles,
                builder: (_, _, _) {
                  return ListView.separated(
                    itemCount: _psalmsTitles.value.length,
                    separatorBuilder: (context, index) => Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                    itemBuilder: (context, index) {
                      final item = _psalmsTitles.value[index];
                      return PsalmsTile(psalmsTitle: item, onPressed: () {
                        showModalBottomSheet(context: context, builder: (_) {
                          return PsalmsContentModalBottomSheet(psalmsTitle: item);
                        });
                      });
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
