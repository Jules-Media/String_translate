library translations;

import 'dart:ui';

/// All the Locales the Translations PLugin
/// supports out of the Box
class TranslationLocales {
  /// English.
  /// This is the Default Location if none is provided
  /// to the package.
  /// This is commected to the US country Code
  static const Locale english = Locale("en", "US");

  /// German.
  /// This is connected to the Germany country Code
  static const Locale german = Locale("de", "DE");

  /// French.
  /// This is connected to the France country Code
  static const Locale french = Locale("fr", "FR");

  /// Spanish.
  /// This is connected to the Spain country Code
  static const Locale spanish = Locale("es", "ES");
}
