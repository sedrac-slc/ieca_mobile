import 'package:flutter/material.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:provider/provider.dart';

class FavouriteContainer extends StatefulWidget {
  final String favouriteType;

  const FavouriteContainer({super.key, required this.favouriteType});

  @override
  State<FavouriteContainer> createState() => _FavouriteContainerState();
}

class _FavouriteContainerState extends State<FavouriteContainer> {
  final _hymnsFavouriteRepository = HymnFavouriteRepository();
  final _hymnsRepository = HymnsNumberRepository();

  List<LanguageSection> languagues = [];
  List<Favourite> favourites = [];

  List<Favourite> favouriteList({LanguageSection? language = null}) {
    if (widget.favouriteType == FavouriteType.HYMNS)
      return _hymnsFavouriteRepository.getAll(language: language);
    return [];
  }

  List<LanguageSection> languagesList() {
    if (widget.favouriteType == FavouriteType.HYMNS)
      return _hymnsFavouriteRepository.getLanguages();
    return [];
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  void _initData({LanguageSection? language = null}) {
    languagues = languagesList();
    if(languagues.length > 0) {
      favourites = favouriteList(language: language ?? languagues.first);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: ColorScheme.of(context).onPrimary,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black12),
        ),
        height: 300,
        child: Consumer<FavouriteRepository>(
          builder: (context, value, child) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if(value.language != null) { _initData(language: value.language!); }
            });

            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: favourites.isEmpty ? MainAxisAlignment.center : MainAxisAlignment.start,
              children: [
                if(favourites.isEmpty) ListEmpty(),

                if(languagues.length > 1)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: _LanguageFavourite(languages: languagues, onChange: (languague) {
                        favourites = favouriteList(language: languague);
                        setState(() {});
                    },),
                  ),

                if (widget.favouriteType == FavouriteType.HYMNS && favourites.isNotEmpty)
                  _GridFavourite(
                    widgets: favourites.map((it) {
                      return InkWell(
                        onTap: () {
                          final language = LanguageSectionSeeder.code(it.lang);
                          final hymnNumber = _hymnsRepository.getByFavourite(it, language);
                          Navigator.push(context,
                            MaterialPageRoute(
                              builder: (_) => HymnsContentScreen(
                                hymnsNumber: hymnNumber,
                                language: language,
                                isFavourite: true,
                              ),
                            ),
                          );
                        },
                          child: NumberBackgroundCenter(number: int.parse(it.number),)
                      );
                    }).toList(),
                  ),
              ],
            );
          }
        ),
      ),
    );
  }
}

class _GridFavourite extends StatelessWidget {
  final List<Widget> widgets;

  const _GridFavourite({required this.widgets});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      crossAxisSpacing: 5,
      mainAxisSpacing: 10,
      childAspectRatio: 1.0,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: widgets,
    );
  }
}

class _LanguageFavourite extends StatefulWidget {
  final List<LanguageSection> languages;
  final Function(LanguageSection lang) onChange;

  _LanguageFavourite({required this.languages, required this.onChange});

  @override
  State<_LanguageFavourite> createState() => _LanguageFavouriteState();
}

class _LanguageFavouriteState extends State<_LanguageFavourite> {
  LanguageSection selected = LanguageSectionSeeder.PORTUGUES;

  @override
  void initState() {
    super.initState();
    selected = widget.languages.first;
  }

  @override
  Widget build(BuildContext context) {
    final colorBar = AppTheme.colorAppBar(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: colorBar,
      ),
      height: 30,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<LanguageSection>(
          iconEnabledColor: Colors.white,
          dropdownColor: colorBar,
          value: selected,
          onChanged: (LanguageSection? it) {
              selected = it!;
              widget.onChange(it);
          },
          items: widget.languages.map((language){
            return DropdownMenuItem(
              value: language,
              child: Text(language.name, style: TextStyle(color: Colors.white),),
            );
          }).toList(),
        ),
      ),
    );
  }
}