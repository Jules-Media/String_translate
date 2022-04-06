library string_translate;

import 'package:flutter/material.dart';
import 'package:string_translate/string_translate.dart';

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
    final _supportedLocales = <Locale>{
      TranslationLocales.english,
      TranslationLocales.german,
      TranslationLocales.french,
      TranslationLocales.spanish,
    };

    // Default Language
    // This is the Language you write your Strings in the Code
    // In this Example it is English (US)
    final Locale _defaultLocale = _supportedLocales.first;

    // The Translations
    final _ownTranslations = <String, Map<Locale, String>>{
      "Example": {
        TranslationLocales.german: "Beispiel",
        TranslationLocales.french: "Exemple",
        TranslationLocales.spanish: "Ejemplo",
      },
      "This is a Text": {
        TranslationLocales.german: "Das ist ein Text",
        TranslationLocales.french: "Ceci est un texte",
        TranslationLocales.spanish: "Este es un texto",
      },
    };

    // Create multiple Maps to the final one
    final Map<String, Map<Locale, String>> _translations = {};

    // Translations from Above
    _translations.addAll(_ownTranslations);

    // Standard Translations for actions
    _translations.addAll(StandardTranslations.actions);

    // Standard Translations for errors
    _translations.addAll(StandardTranslations.error);

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
