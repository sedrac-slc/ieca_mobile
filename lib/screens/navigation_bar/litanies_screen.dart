import 'package:ieca_mobile/l10n/app_localizations.dart';
import 'package:ieca_mobile/models/LitanyTitle.dart';
import 'package:ieca_mobile/repository/LitanyTitleRepository.dart';
import 'package:ieca_mobile/widgets/_import.dart';
import 'package:flutter/material.dart';
import 'package:ieca_mobile/widgets/modal/litany_content_modal_bottom_sheet.dart';

class LitaniesScreen extends StatefulWidget {
  const LitaniesScreen({super.key});

  @override
  State<LitaniesScreen> createState() => _LitaniesScreenState();
}

class _LitaniesScreenState extends State<LitaniesScreen> {
  final ValueNotifier<List<LitanyTitle>> _litanyTitles = ValueNotifier([]);

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _initData();
    });
    super.initState();
  }

  _initData() async {
    final repository = LitanyTitleRepository();
    _litanyTitles.value = await repository.getAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.litanies)),
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
            ValueListenableBuilder<List<LitanyTitle>>(
              valueListenable: _litanyTitles,
              builder: (_, _, _) {
                return Expanded(
                  child: ListView.separated(
                    itemCount: _litanyTitles.value.length,
                    separatorBuilder: (context, index) => Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                    itemBuilder: (context, index) {
                      final item = _litanyTitles.value[index];
                      return LitanyTile(litanyTitle: item, onPressed: () {
                          showModalBottomSheet(context: context, builder: (_) {
                              return LitanyContentModalBottomSheet(litanyTitle: item);
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
