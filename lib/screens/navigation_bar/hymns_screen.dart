import 'package:ieca_mobile/l10n/app_localizations.dart';
import 'package:ieca_mobile/repository/HymnsGroupRepository.dart';
import 'package:ieca_mobile/models/HymnsGroup.dart';
import 'package:ieca_mobile/util/AppTheme.dart';
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
    final colorBar = AppTheme.colorBackgroundAppBar(context);
    return Scaffold(
      appBar: AppBar(
        title: TextTitleBar(text: AppLocalizations.of(context)!.hymns, color: Colors.white,),
        centerTitle: true,
        actions: <Widget>[const ButtonSetting()],
        backgroundColor: colorBar,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 8.0, left: 15, right: 15, bottom: 10),
            color: colorBar,
            child: InputSearch(onSearch: (text) {

            },),
          ),
          BadgeContainer(
            text: "Tipo",
            padding: 3,
            children: [
              BadgeItem(text: "Normal", isSelected: true),
              BadgeItem(text: "Doxologias"),
              BadgeItem(text: "Adicionais"),
            ],
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 8.0, left: 15, right: 15, bottom: 10),
              child: ValueListenableBuilder<List<HymnsGroup>>(
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
                          showModalBottomSheet(
                            context: context,
                            builder: (_) {
                              return HymnsNumberModalBottomSheet(
                                hymnsGroup: item,
                              );
                            },
                          );
                        },
                      );
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
