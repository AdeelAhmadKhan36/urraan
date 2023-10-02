import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeNotifier extends ChangeNotifier{

  // bool is_dark_theme=true;

  bool is_screen_one=true;

  // is_dark_theme
  bool get getScreenStatus{


    // is_dark_theme
    return is_screen_one;
}
  void SetThemeStatuse(bool isScreenOne)async{
    // is_dark_theme
    is_screen_one= isScreenOne;

    final prefs= await SharedPreferences.getInstance();
    await prefs.setBool('is_screen_one',isScreenOne);
    return notifyListeners();

  }

}