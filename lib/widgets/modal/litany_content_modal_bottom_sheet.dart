import 'package:flutter/material.dart';
import 'package:ieca_mobile/models/LitanyTitle.dart';
import 'package:ieca_mobile/repository/LitanyContentRepository.dart';
import 'package:ieca_mobile/util/AppTheme.dart';

class LitanyContentModalBottomSheet extends StatefulWidget {
  final LitanyTitle litanyTitle;

  const LitanyContentModalBottomSheet({
    super.key,
    required this.litanyTitle,
  });

  @override
  State<LitanyContentModalBottomSheet> createState() => _LitanyContentModalBottomSheetState();
}

class _LitanyContentModalBottomSheetState extends State<LitanyContentModalBottomSheet> {
  final LitanyContentRepository _litanyContentRepository = LitanyContentRepository();

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
              future: _litanyContentRepository.getBy(widget.litanyTitle,),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView(
                    children: snapshot.requireData.map((it) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 15, left: 20, right: 20,),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              spacing: 3,
                              children: [
                                Text(it.litanyPerson(), style: TextStyle(color: colorSchema.primary),),
                                Text(it.content),
                              ],
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
