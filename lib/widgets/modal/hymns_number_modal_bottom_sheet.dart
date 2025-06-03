import 'package:flutter/material.dart';
import 'package:ieca_mobile/models/HymnsGroup.dart';
import 'package:ieca_mobile/repository/_import.dart';
import 'package:ieca_mobile/screens/hymns_content_screen.dart';
import 'package:ieca_mobile/util/AppTheme.dart';
import 'package:ieca_mobile/widgets/number_background_leading.dart';

class HymnsNumberModalBottomSheet extends StatefulWidget {
  final HymnsGroup hymnsGroup;

  const HymnsNumberModalBottomSheet({super.key, required this.hymnsGroup});

  @override
  State<HymnsNumberModalBottomSheet> createState() => _HymnsNumberModalBottomSheetState();
}

class _HymnsNumberModalBottomSheetState extends State<HymnsNumberModalBottomSheet> {
  final HymnsNumberRepository _hymnsNumberRepository = HymnsNumberRepository();

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
            onTap: () =>  Navigator.pop(context),
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
              future: _hymnsNumberRepository.getBy(widget.hymnsGroup),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return GridView.count(
                    crossAxisCount: 5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 15,
                    childAspectRatio: 1.8,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: snapshot.requireData.map((it) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 15, left: 20, right: 20,),
                            child: InkWell(
                              child: NumberBackgroundLeading(number: it.num,),
                              onTap: () {
                                Navigator.push( context,
                                  MaterialPageRoute(
                                    builder: (context) => HymnsContentScreen(hymnsNumber: it),
                                  ),
                                );
                              },
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
