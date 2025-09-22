import 'package:flutter/material.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:ieca_mobile/l10n/app_localizations.dart';

class InputSearch extends StatefulWidget {
  final String hintText;
  final Function(String search) onSearch;
  final Function(int num)? onNumber;
  final Function()? onClear;
  final bool isNumber;

  const InputSearch({
    super.key,
    required this.onSearch,
    this.hintText = "Pesquisar ...",
    this.isNumber = false,
    this.onNumber,
    this.onClear
  });

  @override
  State<InputSearch> createState() => _InputSearchState();
}

class _InputSearchState extends State<InputSearch> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var colorAppBar = AppTheme.colorAppBar(context);
    return TextField(
      controller: _textEditingController,
      decoration: InputDecoration(
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: AppLocalizations.of(context)?.inputSearch ?? widget.hintText,
        prefixIcon: !widget.isNumber ? null :  Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
                color: colorAppBar,
                borderRadius: BorderRadius.circular(50)
            ),
            child: IconButton(
              onPressed: () {
                if(widget.onNumber != null) widget.onNumber!(int.parse(_textEditingController.text));
              },
              icon: Icon(Icons.send_rounded, color: Colors.white,),
            ),
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: colorAppBar,
              borderRadius: BorderRadius.circular(50)
            ),
            child: IconButton(
              onPressed: () {
                if (_textEditingController.text.length > 0) {
                  if(widget.onClear != null) widget.onClear!();
                  _textEditingController.clear();
                }
              },
              icon: ValueListenableBuilder(
                valueListenable: _textEditingController,
                builder: (context, value, child) {
                  return Icon(_textEditingController.text.length == 0 ? Icons.search : Icons.clear, color: Colors.white,);
                },
              ),
            ),
          ),
        ),
      ),
      onChanged: (value) {
        if(value.trim().length == 0){
          if(widget.onClear != null) widget.onClear!();
          return;
        }
        widget.onSearch(value);
      },
    );
  }
}
