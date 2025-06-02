import 'package:flutter/material.dart';
import 'package:ieca_mobile/enums/PsalmsPerson.dart';
import 'package:ieca_mobile/models/PsalmsTitle.dart';
import 'package:ieca_mobile/repository/PsalmsContentRepository.dart';
import 'package:ieca_mobile/util/AppTheme.dart';

class PsalmsContentModalBottomSheet extends StatefulWidget {
  final PsalmsTitle psalmsTitle;

  const PsalmsContentModalBottomSheet({
    super.key,
    required this.psalmsTitle,
  });

  @override
  State<PsalmsContentModalBottomSheet> createState() => _PsalmsContentModalBottomSheetState();
}

class _PsalmsContentModalBottomSheetState extends State<PsalmsContentModalBottomSheet> {
  final PsalmsContentRepository _psalmsContentRepository = PsalmsContentRepository();

  @override
  Widget build(BuildContext context) {
    final colorSchema = AppTheme.colorScheme(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        spacing: 10,
        children: <Widget>[
          const SizedBox(height: 5),
          InkWell(
            onTap: () { Navigator.pop(context); },
            child: Container(
              padding: const EdgeInsets.only(top: 20),
              width: 100,
              height: 13,
              decoration: BoxDecoration(
                color: colorSchema.primary,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder(
              future: _psalmsContentRepository.getBy(widget.psalmsTitle,),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView(
                    children: snapshot.requireData.map((it) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 15, left: 20, right: 20,),
                            child: Text(
                              it.content,
                              style: TextStyle(fontWeight: it.person == PsalmsPerson.CONGREGATION ? FontWeight.w700 : null),
                            ),
                          );
                        }).toList(),
                  );
                } else {
                  return Center(
                    child: RepaintBoundary(child: CircularProgressIndicator()),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
