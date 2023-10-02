import 'package:create_model/ThemeData/text_theme.dart';
import 'package:flutter/material.dart';

import 'colors_them.dart';



class Darkthem{
  Darkthem._();

   static ThemeData dark_them= ThemeData(
  backgroundColor:ThemeColors.backgroundColor_dt,
  appBarTheme: app_bar,
     textTheme: ThemeTexts.text_theme_dt,
       iconTheme: icon_theme_data,
  );

   static AppBarTheme app_bar=AppBarTheme(
  backgroundColor: Colors.green,
  titleTextStyle: TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 25,
  color: Colors.white,
  ),
  );


   static TextTheme text_theme=TextTheme(headline1: TextStyle(fontSize: 20,color: Colors.white));
  static IconThemeData icon_theme_data= IconThemeData(
  color: Colors.white,
  size: 50);


}