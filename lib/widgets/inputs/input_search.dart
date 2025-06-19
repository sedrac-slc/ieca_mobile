import 'package:flutter/material.dart';
import 'package:ieca_mobile/util/AppTheme.dart';

class InputSearch extends StatefulWidget {
  final String hintText;
  final Function(String search) onSearch;
  final Function()? onClear;

  const InputSearch({
    super.key,
    required this.onSearch,
    this.hintText = "Pesquisar ...",
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
    var colorBackgroundAppBar = AppTheme.colorBackgroundAppBar(context);
    return TextField(
      controller: _textEditingController,
      decoration: InputDecoration(
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: widget.hintText,
        suffixIcon: IconButton(
          onPressed: () {
            if (_textEditingController.text.length > 0) {
              _textEditingController.clear();
              widget.onClear!();
            }
          },
          icon: ValueListenableBuilder(
            valueListenable: _textEditingController,
            builder: (context, value, child) {
              return Icon(
                _textEditingController.text.length == 0 ? Icons.search : Icons.clear,
                color: colorBackgroundAppBar,
              );
            },
          ),
        ),
      ),
      onChanged: (value) {
        value.trim().length > 0 ? widget.onSearch(value) : widget.onClear!();
      },
    );
  }
}
