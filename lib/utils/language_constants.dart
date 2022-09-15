import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String languageCode = 'languageCode';

//languages code
const String english = 'en';
const String hindi = 'hi';

Future<Locale> setLocale(String newLanguageCode) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  await _prefs.setString(languageCode, newLanguageCode);
  return _locale(newLanguageCode);
}

Future<Locale> getLocale() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  String _languageCode =
      _prefs.getString(languageCode) ?? Platform.localeName.substring(0, 2);
  return _locale(_languageCode);
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case english:
      return const Locale(english);
    case hindi:
      return const Locale(hindi);
    default:
      return const Locale(english);
  }
}
