import 'package:flutter/material.dart';
import 'package:ieca_mobile/models/hymns_group.dart';
import 'package:ieca_mobile/repository/_import.dart';
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
      height: MediaQuery.of(context).size.height * 0.78,
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
                      child: GridHymns(hymnsNumbers: snapshot.requireData,),
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
