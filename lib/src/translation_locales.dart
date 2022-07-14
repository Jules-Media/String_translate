library string_translate;

import 'dart:ui' show Locale;

import 'translations.dart' show Translation;

/// All the Locales the Translations PLugin
/// supports out of the Box
class TranslationLocales {
  // Constatnt Constructor
  const TranslationLocales();

  /// English.
  /// This is the Default Location if none is provided
  /// to the package.
  /// This is commected to the US country Code
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
}
