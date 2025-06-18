import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieca_mobile/enums/_import.dart';
import 'package:ieca_mobile/models/HymnsNumber.dart';
import 'package:ieca_mobile/repository/HymnsContentRepository.dart';
import 'package:ieca_mobile/util/AppTheme.dart';
import 'package:ieca_mobile/widgets/_import.dart';

class HymnsContentScreen extends StatefulWidget {
  final HymnsNumber hymnsNumber;

  const HymnsContentScreen({super.key, required this.hymnsNumber});

  @override
  State<HymnsContentScreen> createState() => _HymnsContentScreenState();
}

class _HymnsContentScreenState extends State<HymnsContentScreen> {
  final HymnsContentRepository _hymnsContentRepository = HymnsContentRepository();

  @override
  Widget build(BuildContext context) {
    final colorBar = AppTheme.colorBackgroundAppBar(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBar,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_circle_left_outlined, color: Colors.white,),
        ),
      ),
      body: FutureBuilder(
        future: _hymnsContentRepository.getBy(widget.hymnsNumber),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 1,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  constraints: BoxConstraints(minWidth: 50, minHeight: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        widget.hymnsNumber.num.toString(),
                        style: GoogleFonts.roboto(fontSize: 18),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          "(${widget.hymnsNumber.label})",
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children:
                        snapshot.requireData.map((it) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                              left: 20,
                              right: 20,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 5,
                              children: [
                                if (it.typeStanza == HymnsContentCode.VERSE) ...[
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    spacing: 10,
                                    children: [
                                      NumberBackgroundCenter(
                                        number: it.position,
                                      ),
                                      Expanded(
                                        child: Text(
                                          it.content,
                                          style: GoogleFonts.roboto(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ] else ...[
                                  Container(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: Text(
                                      it.content,
                                      style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          );
                        }).toList(),
                  ),
                ),
              ],
            );
          } else {
            return Center(
              child: RepaintBoundary(child: CircularProgressIndicator()),
            );
          }
        },
      ),
    );
  }
}
