library translations;

import 'package:flutter/material.dart';
import 'package:translations/translations.dart';

import 'homescreen.dart';

void main(List<String> args) {
  runApp(const ExampleApp());
}

class ExampleApp extends StatefulWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  State<ExampleApp> createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  @override
  Widget build(BuildContext context) {
    // supported Locales
    const _supportedLocales = <Locale>[
      Locale("en", "US"),
      Locale("de", "DE"),
    ];

    // Default Language
    // This is the Language you write your Strings in the Code
    // In this Example it is English (US)
    final Locale _defaultLocale = _supportedLocales.first;

    // The Translations
    final _translations = <String, Map<Locale, String>>{
      "Example": {
        Translation.german: "Beispiel",
        Translation.french: "Exemple",
      },
      "This is a Text": {
        Translation.german: "Das ist ein Text",
        Translation.french: "Ceci est un texte"
      }
    };

    // Call the init Method
    Translation.init(
      supportedLocales: _supportedLocales,
      defaultLocale: _defaultLocale,
      translations: _translations,
    );

    return const MaterialApp(
      title: "Translation Example",
      home: Homescreen(),
    );
  }
}
