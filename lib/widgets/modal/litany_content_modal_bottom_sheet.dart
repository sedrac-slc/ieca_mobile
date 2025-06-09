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
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        spacing: 10,
        children: <Widget>[
          const ModalButtonTop(),
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  spacing: 10,
                                  children: [
                                    Text(it.litanyPerson(), style: TextStyle(color: colorBar, fontWeight: FontWeight.w700),),
                                    if (it.person == LitanyPerson.CONGREGATION) ...[
                                      _BackgroundPanel(
                                          child: Text(it.content, style: TextStyle(fontWeight: FontWeight.w700),)
                                      )
                                    ] else ... [
                                      _BackgroundPanel(
                                          child: Text(it.content)
                                      )
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

class _BackgroundPanel extends StatelessWidget{
  final Widget child;

  const _BackgroundPanel({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.grey.withAlpha(50),
          borderRadius: BorderRadius.circular(10)
      ),
      child: child,
    );
  }
}