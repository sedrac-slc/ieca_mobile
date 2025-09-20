import 'package:ieca_mobile/l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class HymnsContentScreen extends StatefulWidget {
  final bool isFavourite;
  final HymnsNumber hymnsNumber;
  final LanguageSection? language;

  const HymnsContentScreen({
    required this.hymnsNumber,
    this.isFavourite = false,
    this.language,
  });

  @override
  State<HymnsContentScreen> createState() => _HymnsContentScreenState();
}

class _HymnsContentScreenState extends State<HymnsContentScreen> {
  final HymnsContentRepository _hymnsContentRepository = HymnsContentRepository();
  String _message = "";

  IconData _iconDataFavourite(FavouriteRepository favouriteRepository){
    bool data = false;
    data = widget.isFavourite && widget.language != null
        ? favouriteRepository.hymnExistsLang(widget.hymnsNumber, widget.language!.code)
        : favouriteRepository.hymnExists(widget.hymnsNumber);
    return data ? Icons.favorite_outlined : Icons.favorite_border;
  }

  void initData() async {
    _message = await _hymnsContentRepository.generator(widget.hymnsNumber, language: widget.language);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    initData();
  }

  @override
  Widget build(BuildContext context) {
    final colorDark = AppTheme.colorAppBarDark(context);
    final favouriteRepository = context.watch<FavouriteRepository>();

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)?.hymn ?? "Hino"),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(AppIconData.iconBack),
        ),
        actions: [
          IconButton(onPressed: () {
              if(widget.isFavourite && widget.language != null) {
                favouriteRepository.hymnPutOrRemoveLang(widget.hymnsNumber, widget.language!);
                return;
              }
              favouriteRepository.hymnPutOrRemove(widget.hymnsNumber);
          }, icon: Icon(_iconDataFavourite(favouriteRepository))),
          CopyButton(message: _message),
          SharedButton(message: _message,),
        ],
      ),
      body: FutureBuilder(
        future: _hymnsContentRepository.getBy(widget.hymnsNumber, language: widget.language),
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
                                        color: colorDark
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
