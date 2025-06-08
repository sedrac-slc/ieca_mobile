import 'package:flutter/material.dart';

class InputSearch extends StatelessWidget {
  final String hintText;

  const InputSearch({super.key, this.hintText = "Pesquisar ..."});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: hintText,
        suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search))
      ),
      
    );
  }
}
