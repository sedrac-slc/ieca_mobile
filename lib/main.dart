import 'package:flutter/material.dart';
import 'package:ieca_mobile/app.dart';
import 'package:ieca_mobile/repository/LitanyTitleRepository.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => LitanyTitleRepository())
    ],
    child: IecaApp(),
  ));
}
