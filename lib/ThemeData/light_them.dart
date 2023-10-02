import 'package:create_model/ThemeData/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'colors_them.dart';
class LightThem{
  LightThem._();

 static ThemeData light_theme =ThemeData(
  backgroundColor:ThemeColors.backgroundColor_lt,
  appBarTheme: appbar_them,
   textTheme:ThemeTexts.text_theme_lt,
   iconTheme: icon_theme_data
  );

  static AppBarTheme appbar_them=AppBarTheme(
    backgroundColor: Colors.red,
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 25,
      color: Colors.white,

    ));

  // static TextTheme text_theme=TextTheme(headline1: TextStyle(fontSize: 20,color: Colors.white));


   static IconThemeData icon_theme_data= IconThemeData(
   color: Colors.black,
     size: 80,

   );
}