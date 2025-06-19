import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieca_mobile/models/LitanyTitle.dart';
import 'package:ieca_mobile/repository/LitanyContentRepository.dart';
import 'package:ieca_mobile/widgets/items/litany_content_item.dart';

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
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        spacing: 10,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
            alignment: Alignment.topLeft,
            child: Text(widget.litanyTitle.name, style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.bold),),
          ),
          Expanded(
            child: FutureBuilder(
              future: _litanyContentRepository.getBy(widget.litanyTitle,),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView(
                    children: snapshot.requireData.map((it) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20,),
                            child: LitanyContentItem(litanyContent: it),
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