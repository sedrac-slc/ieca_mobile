import 'package:flutter/material.dart';

class ScaffoldPadding extends StatelessWidget {
  final Widget body;
  final double paddingTop;
  final PreferredSizeWidget? appBar;

  const ScaffoldPadding({
    super.key,
    required this.body,
    this.paddingTop = 50,
    this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Padding(
        padding: EdgeInsets.only(top: paddingTop, left: 10, right: 10),
        child: body,
      ),
    );
  }
}
