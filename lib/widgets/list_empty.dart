import 'package:flutter/material.dart';

class ListEmpty extends StatelessWidget {
  const ListEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          Icon(Icons.info_outline, color: Colors.grey, size: 80,),
          Text(
            "Não tem informação",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
