library translations;

import 'package:flutter/material.dart';
import 'package:translations/translations.dart';

import 'homescreen.dart';

/// Main Method which starts the Example App
void main(List<String> args) {
  runApp(const ExampleApp());
}

/// Example App
class ExampleApp extends StatefulWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  State<ExampleApp> createState() => _ExampleAppState();
}

/// Example App State
class _ExampleAppState extends State<ExampleApp> {
  @override
  Widget build(BuildContext context) {
    // supported Locales
    const _supportedLocales = <Locale>[
      TranslationLocales.english,
      TranslationLocales.german,
      TranslationLocales.french,
    ];

    // Default Language
    // This is the Language you write your Strings in the Code
    // In this Example it is English (US)
    final Locale _defaultLocale = _supportedLocales.first;

    // The Translations
    final _translations = <String, Map<Locale, String>>{
      "Example": {
        TranslationLocales.german: "Beispiel",
        TranslationLocales.french: "Exemple",
      },
      "This is a Text": {
        TranslationLocales.german: "Das ist ein Text",
        TranslationLocales.french: "Ceci est un texte"
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
