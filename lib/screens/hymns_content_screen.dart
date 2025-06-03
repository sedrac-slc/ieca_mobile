import 'package:flutter/material.dart';
import 'package:ieca_mobile/models/HymnsNumber.dart';

class HymnsContentScreen extends StatefulWidget {
  final HymnsNumber hymnsNumber;

  const HymnsContentScreen({super.key, required this.hymnsNumber});

  @override
  State<HymnsContentScreen> createState() => _HymnsContentScreenState();
}

class _HymnsContentScreenState extends State<HymnsContentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_rounded),
        ),
      ),
    );
  }
}
