
import 'package:Argaam_Flutter/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = true;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }
  static ThemeData get lightTheme { //1
    return ThemeData( //2
        primaryColor: primary_background_one,
        scaffoldBackgroundColor: primary_background_one,
        //fontFamily: 'Montserrat', //3
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: primary_background_card_two,
        ),
        textTheme: ThemeData.light().textTheme,
        buttonTheme: ButtonThemeData( // 4
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: primary_button,
        )
    );
  }
  static ThemeData get darkTheme {
    return ThemeData(
        primaryColor: primary_background_two,
        scaffoldBackgroundColor: primary_background_two,
        //fontFamily: 'Montserrat',
        textTheme: ThemeData.dark().textTheme,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: primary_background_card_one,
        ),
        buttonTheme: ButtonThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          buttonColor: primary_button,
        )
    );
  }
}