import 'package:flutter/material.dart';
import 'package:ieca_mobile/models/HymnsGroup.dart';
import 'package:ieca_mobile/repository/_import.dart';
import 'package:ieca_mobile/screens/hymns_content_screen.dart';
import 'package:ieca_mobile/widgets/_import.dart';

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

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        spacing: 10,
        children: <Widget>[
          const ModalButtonTop(),
          Expanded(
            child: SingleChildScrollView(
              child: FutureBuilder(
                future: _hymnsNumberRepository.getBy(widget.hymnsGroup),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.count(
                        crossAxisCount: 5,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1.0,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: snapshot.requireData.map((it) {
                              return InkWell(
                                child: NumberHymns(number: it.num,),
                                onTap: () {
                                  Navigator.push( context,
                                    MaterialPageRoute(
                                      builder: (context) => HymnsContentScreen(hymnsNumber: it),
                                    ),
                                  );
                                },
                              );
                            }).toList(),
                      ),
                    );
                  } else {
                    return Center(
                      child: RepaintBoundary(child: CircularProgressIndicator()),
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
