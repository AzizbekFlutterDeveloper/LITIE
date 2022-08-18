import 'package:flutter/material.dart';

class LanguageManager {
  static LanguageManager? _instance;
  static LanguageManager get instance {
    _instance ??= LanguageManager._init();
    return _instance!;
  }

  LanguageManager._init();

  final uzLocale = const Locale("uz", "UZ");

  List<Locale> get suppprtedLocales => [
        uzLocale,
      ];
}