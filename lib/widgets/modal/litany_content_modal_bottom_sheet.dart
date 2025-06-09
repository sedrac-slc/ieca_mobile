import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieca_mobile/enums/_import.dart';
import 'package:ieca_mobile/models/LitanyTitle.dart';
import 'package:ieca_mobile/repository/LitanyContentRepository.dart';
import 'package:ieca_mobile/util/AppTheme.dart';
import 'package:ieca_mobile/widgets/modal_button_top.dart';

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
    final colorBar = AppTheme.colorBackgroundAppBar(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        spacing: 10,
        children: <Widget>[
          const ModalButtonTop(),
          Text(widget.litanyTitle.name, style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.bold),),
          Expanded(
            child: FutureBuilder(
              future: _litanyContentRepository.getBy(widget.litanyTitle,),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView(
                    children: snapshot.requireData.map((it) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20,),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 3,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  spacing: 10,
                                  children: [
                                    Text(it.litanyPerson(), style: TextStyle(color: colorBar, fontWeight: FontWeight.w700),),
                                    if (it.person == LitanyPerson.CONGREGATION) ...[
                                      Text(it.content, style: TextStyle(fontWeight: FontWeight.w700),)
                                    ] else ... [
                                      Text(it.content)
                                    ],
                                  ],
                                ),
                                Container(
                                    alignment: Alignment.bottomRight,
                                    child: Text(it.books, textAlign: TextAlign.right,)
                                ),
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
