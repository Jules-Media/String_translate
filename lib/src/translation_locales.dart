library;

import 'dart:ui' show Locale;

import 'translations.dart' show Translation;

/// All the Locales the Translations PLugin
/// supports out of the Box
class TranslationLocales {
  // Constant Constructor
  const TranslationLocales();

  /// English.
  /// This is the Default Location if none is provided
  /// to the package.
  /// This is connected to the US country Code
  static Locale get english => const Locale('en', 'US');

  /// German.
  /// This is connected to the Germany country Code
  static Locale get german => const Locale('de', 'DE');

  /// French.
  /// This is connected to the France country Code
  static Locale get french => const Locale('fr', 'FR');

  /// Spanish.
  /// This is connected to the Spain country Code
  static Locale get spanish => const Locale('es', 'ES');

  /// Portuguese.
  /// This is not connected to a Country Code
  static Locale get portuguese => const Locale('pt');

  /// All Translation Locales in one Set.
  /// Could be used in MaterialApp.supportedLocales
  /// or in the [Translation.init] Method
  static Set<Locale> get all => {
        english,
        german,
        french,
        spanish,
        portuguese,
      };

  /// Returns the Locale for the
  /// given Language Code
  static Locale getLocale(String string) {
    final Locale output;
    final String s;
    if (string.length > 2) {
      s = string.substring(0, 3);
    } else {
      s = string;
    }
    switch (s) {
      case 'en':
        output = english;
        break;
      case 'de':
        output = german;
        break;
      case 'fr':
        output = french;
        break;
      case 'es':
        output = spanish;
        break;
      case 'pt':
        output = portuguese;
        break;
      default:
        output = english;
        break;
    }
    return output;
  }
}