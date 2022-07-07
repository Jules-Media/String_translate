library string_translate;

import 'dart:ui' show Locale;

import 'translation_locales.dart';

/// Class in which all Standard Translations
/// the Package provides are stores
class StandardTranslations {
  const StandardTranslations();

  /// Some of the Words that are associated with Actions.
  /// Like for Example "Done", "Cancel" or "Continue".
  static Map<String, Map<Locale, String>> get actions {
    return {
      'Done': {
        TranslationLocales.german: 'Fertig',
        TranslationLocales.french: 'Terminé',
        TranslationLocales.spanish: 'Hecho',
        TranslationLocales.portuguese: 'Feita',
      },
      'Cancel': {
        TranslationLocales.german: 'Abbrechen',
        TranslationLocales.french: 'Annuler',
        TranslationLocales.spanish: 'Cancelar',
        TranslationLocales.portuguese: 'Cancelar',
      },
      'Continue': {
        TranslationLocales.german: 'Weiter',
        TranslationLocales.french: 'Continuez',
        TranslationLocales.spanish: 'Continuar',
        TranslationLocales.portuguese: 'Continuar',
      },
      'Delete': {
        TranslationLocales.german: 'Löschen',
        TranslationLocales.french: 'Supprimer',
        TranslationLocales.spanish: 'Borrar',
        TranslationLocales.portuguese: 'Excluir',
      },
      'Ok': {
        TranslationLocales.german: 'Ok',
        TranslationLocales.french: 'D\'accord',
        TranslationLocales.spanish: 'OK',
        TranslationLocales.portuguese: 'OK'
      },
      'OK': {
        TranslationLocales.german: 'Ok',
        TranslationLocales.french: 'D\'accord',
        TranslationLocales.spanish: 'OK',
        TranslationLocales.portuguese: 'OK'
      },
      'Confirm': {
        TranslationLocales.german: 'Bestätigen',
        TranslationLocales.french: 'Confirmer',
        TranslationLocales.spanish: 'Confirmar',
        TranslationLocales.portuguese: 'confirme'
      }
    };
  }

  /// Some of the words that are associated with Errors.
  /// For Example: "Error" and "Exception"
  static Map<String, Map<Locale, String>> get error {
    return {
      'Error': {
        TranslationLocales.german: 'Fehler',
        TranslationLocales.french: 'Erreur',
        TranslationLocales.spanish: 'Error',
        TranslationLocales.portuguese: 'Erro',
      },
      'Exception': {
        TranslationLocales.german: 'Ausnahme',
        TranslationLocales.french: 'Exception',
        TranslationLocales.spanish: 'Excepción',
        TranslationLocales.portuguese: 'Exceção',
      },
      'Something went wrong': {
        TranslationLocales.german: 'Etwas ist schiefgelaugen',
        TranslationLocales.french: 'Quelque chose s\'est mal passé',
        TranslationLocales.spanish: 'Algo salió mal',
        TranslationLocales.portuguese: 'Algo deu errado',
      }
    };
  }
}
