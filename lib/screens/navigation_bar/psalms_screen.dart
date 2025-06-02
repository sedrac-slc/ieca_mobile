import 'package:ieca_mobile/l10n/app_localizations.dart';
import 'package:ieca_mobile/models/PsalmsTitle.dart';
import 'package:ieca_mobile/repository/PsalmsTitleRepository.dart';
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
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.psalms)),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 8.0,
          left: 15,
          right: 15,
          bottom: 10,
        ),
        child: Column(
          spacing: 30,
          children: [
            InputSearch(),
            ValueListenableBuilder<List<PsalmsTitle>>(
              valueListenable: _psalmsTitles,
              builder: (_, _, _) {
                return Expanded(
                  child: ListView.separated(
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
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
