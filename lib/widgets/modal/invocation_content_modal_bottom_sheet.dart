import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieca_mobile/models/invocation_title.dart';
import 'package:ieca_mobile/repository/invocation_content_repository.dart';
import 'package:ieca_mobile/widgets/_import.dart';
import 'package:ieca_mobile/widgets/items/_import.dart';

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
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        spacing: 10,
        children: <Widget>[
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(widget.invocationTitle.name, style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),),
                            const ButtonBack(),
                          ]
                        ),
                        Expanded(
                          child: ListView(
                            children: snapshot.requireData.map((it) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 15),
                                    child: InvocationContentItem(invocationContent: it)
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
