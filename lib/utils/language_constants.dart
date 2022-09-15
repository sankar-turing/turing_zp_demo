import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String languageCodeKey = 'languageCode';

//languages code
const String english = 'en';
const String hindi = 'hi';

Future<Locale> setLocale(String newLanguageCode) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(languageCodeKey, newLanguageCode);
  return _locale(newLanguageCode);
}

Future<Locale> getLocale() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String languageCode =
      prefs.getString(languageCodeKey) ?? Platform.localeName.substring(0, 2);
  return _locale(languageCode);
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
