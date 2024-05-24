import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension AppContextEntension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;

  ColorScheme get colorsScheme => Theme.of(this).colorScheme;
}
