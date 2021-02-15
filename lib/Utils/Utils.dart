import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

getValueForKey(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return String
  String stringValue = prefs.getString(key);
  return stringValue;
}

setValueForKey(String value, String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(key, value);
}

getCurrentTextDirection() {
  return getValueForKey('Language') == 'ar'
      ? TextDirection.rtl
      : TextDirection.ltr;
}
