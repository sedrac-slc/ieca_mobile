import 'package:flutter/material.dart';
import 'package:ieca_mobile/models/psalms_title.dart';
import 'package:ieca_mobile/repository/psalms_content_repository.dart';
import 'package:ieca_mobile/widgets/items/_import.dart';

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
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        spacing: 10,
        children: <Widget>[
          Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 20, right: 20,),
              child: Text(widget.psalmsTitle.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
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
                            child: PsalmsContentItem(psalmsContent: it),
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
