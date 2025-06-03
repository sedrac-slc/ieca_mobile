import 'package:ieca_mobile/l10n/app_localizations.dart';
import 'package:ieca_mobile/repository/HymnsGroupRepository.dart';
import 'package:ieca_mobile/models/HymnsGroup.dart';
import 'package:ieca_mobile/widgets/_import.dart';
import 'package:flutter/material.dart';

class HymnsScreen extends StatefulWidget {
  const HymnsScreen({super.key});

  @override
  State<HymnsScreen> createState() => _HymnsScreenState();
}

class _HymnsScreenState extends State<HymnsScreen> {
  final ValueNotifier<List<HymnsGroup>> _hymnsGroup = ValueNotifier([]);

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _initData();
    });
    super.initState();
  }

  _initData() async {
    final repository = HymnsGroupRepository();
    _hymnsGroup.value = await repository.getAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.hymns)),
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
            ValueListenableBuilder<List<HymnsGroup>>(
              valueListenable: _hymnsGroup,
              builder: (_, _, _) {
                return Expanded(
                  child: ListView.separated(
                    itemCount: _hymnsGroup.value.length,
                    separatorBuilder: (context, index) => Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                    itemBuilder: (context, index) {
                      final item = _hymnsGroup.value[index];
                      return HymnsGroupTile(hymnsGroup: item, onPressed: () {
                        showModalBottomSheet(context: context, builder: (_) {
                          return HymnsNumberModalBottomSheet(hymnsGroup: item);
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
