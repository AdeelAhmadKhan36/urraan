import 'package:create_model/Providers/theme_notifier.dart';
import 'package:create_model/ThemeData/light_them.dart';
import 'package:flutter/material.dart';
import 'SharedPreferences/shared_preferences.dart';
import 'Statemanagment/state_manag.dart';
import 'ThemeData/dart_them.dart';
import 'ThemeData/theme.dart';
import 'home.dart';

import 'calander.dart';
import 'home.dart';
import 'package:provider/provider.dart';

void main() {
  return runApp
    (
      MultiProvider(


        providers:[
      ChangeNotifierProvider(create:(_)=>ThemeNotifier()),
      // ChangeNotifierProvider(create:(_)=>ThemeNotifier()),

    ],

        child:  MyApp(),
    ));



}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: LightThem.light_theme,
      //  darkTheme: Darkthem.dark_them,
      // themeMode:context.watch<ThemeNotifier>().getScreenStatus?
      // ThemeMode.dark:ThemeMode.light,
      themeMode: ThemeMode.light,


      home:Statemanagment(),
    );

  }
}

