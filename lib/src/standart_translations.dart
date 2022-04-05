library string_translate;

import 'dart:ui';

import 'package:string_translate/string_translate.dart';

/// Class in which all Standard Translations
/// the Package provides are stores
class StandardTranslations {
  /// Some of the Words that are associated with Actions.
  /// Like for Example "Done", "Cancel" or "Continue".
  static Map<String, Map<Locale, String>> get actions {
    return {
      "Done": {
        TranslationLocales.german: "Fertig",
        TranslationLocales.french: "Terminé",
        TranslationLocales.spanish: "Hecho",
      },
      "Cancel": {
        TranslationLocales.german: "Abbrechen",
        TranslationLocales.french: "Annuler",
        TranslationLocales.spanish: "Cancelar",
      },
      "Continue": {
        TranslationLocales.german: "Weiter",
        TranslationLocales.french: "Continuez",
        TranslationLocales.spanish: "Continuar",
      }
    };
  }
}
