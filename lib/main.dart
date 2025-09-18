import 'package:flutter/material.dart';
import 'package:ieca_mobile/_import.dart';
import 'package:ieca_mobile/app.dart';
import 'package:ieca_mobile/object_box.dart';
import 'package:provider/provider.dart';

/// Provides access to the ObjectBox Store throughout the app.
late ObjectBox objectbox;

Future<void> main() async {
  // This is required so ObjectBox can get the application directory
  // to store the database in.
  WidgetsFlutterBinding.ensureInitialized();

  objectbox = await ObjectBox.create();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) =>  PreferenceRepository()),
      ChangeNotifierProvider(create: (_) =>  FavouriteRepository()),
    ],
    child: const IecaApp(),
  ));
}