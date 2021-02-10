
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
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: white_background,
          labelStyle: TextStyle(color: Colors.black),
          hintStyle: TextStyle(color: Colors.grey),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            onPrimary: black_background,
            primary: white_background,
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            backgroundColor: light_grey_background,
            primary: grey_background,
          ),
        ),
        textTheme: ThemeData.light().textTheme,
        buttonTheme: ButtonThemeData( // 4
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          buttonColor: primary_button,
        )
    );
  }
  static ThemeData get darkTheme {
    return ThemeData(
      cardTheme: CardTheme(
        color: Colors.yellow
      ),
        primaryColor: dark_blue_background,
        backgroundColor: Colors.yellow,
        scaffoldBackgroundColor: dark_blue_background,
        textTheme: ThemeData.dark().textTheme,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: primary_background_card_one,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: dark_blue_background,
          labelStyle: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            primary: dark_blue_background,
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            backgroundColor: light_blue_background,
            primary: white_background,
          ),
        ),
        buttonTheme: ButtonThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          buttonColor: primary_button,
        )
    );
  }
}