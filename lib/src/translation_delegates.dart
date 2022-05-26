library string_translate;

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// Contains the LocalizationDelegates for
/// different Apps
class TranslationDelegates {
  /// Material Localization Delegate
  static const _materialDelegation = GlobalMaterialLocalizations.delegate;

  /// Cupertino Localization Delegate
  static const _cupertinoDelegation = GlobalCupertinoLocalizations.delegate;

  /// Widget Localization Delegate
  static const _widgetDelegation = GlobalWidgetsLocalizations.delegate;

  /// Returns a List of localizationDelegates.
  /// This List contains the Material, Cupertino and Widgets
  /// Library Localizations
  static List<LocalizationsDelegate> get localizationDelegates {
    return const [
      _materialDelegation,
      _cupertinoDelegation,
      _widgetDelegation,
    ];
  }
}
