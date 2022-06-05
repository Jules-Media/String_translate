library string_translate;

import 'dart:collection' show HashMap;
import 'dart:ui' show Locale;

import 'translation_locales.dart';

/// Class that holds all things to
/// translate the Strings
class Translation {
  const Translation();

  /// All the Supported Locales
  static Set<Locale> _supportedLocales = {};

  /// All the Supported Locales.
  /// This is hidden behind a getter, because you have to
  /// set it in the [init] method, and can't change it later
  static Set<Locale> get supportedLocales => _supportedLocales;

  /// The Active Locale at the Moment while
  /// the String is translated
  static Locale _activeLocale = TranslationLocales.english;

  /// Getter for the Active Locale at the Moment while
  /// the String is translated
  static Locale get activeLocale => _activeLocale;

  /// The Default Locale, the Language in which
  /// you write your Text / Strings in the Code
  static Locale _defaultLocale = TranslationLocales.english;

  /// The Default Locale, the Language in which
  /// you write your Text / Strings in the Code.
  /// This is hidden behind a getter because you have to
  /// set it in the [init] method and can't change it later
  static Locale get defaultLocation => _defaultLocale;

  /// The Map with the Translations. From this map the HashMap is created
  static Map<String, Map<Locale, String>> _translationsMap = {};

  /// The Translations as a [HashMap] because this is efficient calling.
  /// A HashMap has a constant Iteration Time.
  static final HashMap<String, Map<Locale, String>> _translations =
      HashMap.from(_translationsMap);

  /// Initializes the Translation Class
  /// with all Values needed
  static void init({
    required Set<Locale> supportedLocales,
    required Locale defaultLocale,
    required Map<String, Map<Locale, String>> translations,
  }) {
    _supportedLocales = supportedLocales;
    _defaultLocale = defaultLocale;
    _translationsMap = translations;
  }

  /// Changes the Language at the Runtime.
  /// Mostly used if your App has a Language Chooser Dialog
  /// or something similar.
  /// This Method has to be called in a setState(() {}) to work properly
  static void changeLanguage(Locale newLocale) {
    _activeLocale = newLocale;
  }

  /// The Method called to Translate the String.
  /// This returns the String translated to the [_activeLocale].
  /// If you did not specify a Translation for the
  /// [input] it returns the [input]
  static String _translate(String input) {
    final translatedMap = _translations[input];
    if (translatedMap != null) {
      return translatedMap[_activeLocale]!;
    } else {
      return input;
    }
  }
}

/// Extension on String to Translate the String.
extension Translate on String {
  /// Method that actually translates
  /// the String
  /// This method takes no time when calling it with the default Locale
  /// because then it just returns the String you called it on
  String tr() {
    if (Translation._activeLocale == Translation.defaultLocation) {
      return this;
    } else {
      return Translation._translate(this);
    }
  }
}
