library string_translate;

import 'package:flutter/material.dart';
import 'package:string_translate/string_translate.dart' hide Translate;

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
    final supportedLocales = <Locale>{
      TranslationLocales.english,
      TranslationLocales.german,
      TranslationLocales.french,
      TranslationLocales.spanish,
    };

    // Default Language
    // This is the Language you write your Strings in the Code
    // In this Example it is English (US)
    final Locale defaultLocale = supportedLocales.first;

    // The Translations
    final ownTranslations = <String, Map<Locale, String>>{
      'Example': {
        TranslationLocales.german: 'Beispiel',
        TranslationLocales.french: 'Exemple',
        TranslationLocales.spanish: 'Ejemplo',
      },
      'This is a Text': {
        TranslationLocales.german: 'Das ist ein Text',
        TranslationLocales.french: 'Ceci est un texte',
        TranslationLocales.spanish: 'Este es un texto',
      },
    };

    // Create multiple Maps to the final one
    final Map<String, Map<Locale, String>> translations = {};

    // Translations from Above
    translations.addAll(ownTranslations);

    // Standard Translations for actions
    translations.addAll(StandardTranslations.actions);

    // Standard Translations for errors
    translations.addAll(StandardTranslations.error);

    // Call the init Method
    Translation.init(
      supportedLocales: supportedLocales,
      defaultLocale: defaultLocale,
      translations: translations,
    );

    return MaterialApp(
      /* Develooer Section */
      checkerboardOffscreenLayers: false,
      checkerboardRasterCacheImages: false,
      showPerformanceOverlay: false,
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: true,
      debugShowMaterialGrid: false,

      /* App Section */
      themeMode: ThemeMode.system,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      useInheritedMediaQuery: false,
      title: 'Translation Example',
      home: const Homescreen(),
    );
  }
}
