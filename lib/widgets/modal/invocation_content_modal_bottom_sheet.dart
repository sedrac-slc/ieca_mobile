import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieca_mobile/models/InvocationTitle.dart';
import 'package:ieca_mobile/repository/InvocationContentRepository.dart';
import 'package:ieca_mobile/widgets/badge/number_background_center.dart';
import 'package:ieca_mobile/widgets/modal_button_top.dart';

class InvocationContentModalBottomSheet extends StatefulWidget {
  final InvocationTitle invocationTitle;

  const InvocationContentModalBottomSheet({
    super.key,
    required this.invocationTitle,
  });

  @override
  State<InvocationContentModalBottomSheet> createState() =>
      _InvocationContentModalBottomSheetState();
}

class _InvocationContentModalBottomSheetState
    extends State<InvocationContentModalBottomSheet> {
  final InvocationContentRepository _invocationContentRepository =
      InvocationContentRepository();

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
            child: FutureBuilder(
              future: _invocationContentRepository.getBy(
                widget.invocationTitle,
              ),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Padding(
                    padding: const EdgeInsets.only( bottom: 30,left: 25, right: 25, ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      children: [
                        Text(widget.invocationTitle.name, style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),),
                        Expanded(
                          child: ListView(
                            children: snapshot.requireData.map((it) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 15),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      spacing: 10,
                                      children: [
                                        NumberBackgroundCenter(number: it.position),
                                        Expanded(
                                          child: Column(
                                            spacing: 3,
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.symmetric(horizontal: 10),
                                                decoration: BoxDecoration(
                                                    color: Colors.grey.withAlpha(50),
                                                    borderRadius: BorderRadius.circular(10)
                                                ),
                                                child: Text(
                                                  it.content,
                                                  style: TextStyle(fontSize: 15),
                                                ),
                                              ),
                                              Text(it.books, style: GoogleFonts.roboto(fontWeight: FontWeight.w600),)
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                          ),
                        ),
                      ],
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
        ],
      ),
    );
  }
}
