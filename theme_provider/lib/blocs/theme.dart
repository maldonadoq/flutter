
import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier{
  ThemeData _themeData;

  ThemeChanger(ThemeData theme){
    this._themeData = theme;
  }

  getTheme(){
    return this._themeData;
  }

  setTheme(ThemeData theme){
    this._themeData = theme;
    notifyListeners();
  }
}