import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solar_energy_prediction/core/theme/theme.dart';
import 'package:solar_energy_prediction/core/theme/theme_provider.dart';
import 'package:solar_energy_prediction/core/theme/theme_util.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BaseMaterialApp extends ConsumerWidget {
  final Widget home;

  const BaseMaterialApp({
    super.key,
    required this.home,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextTheme textTheme = createTextTheme(context, "Roboto", "Roboto");
    MaterialTheme theme = MaterialTheme(textTheme);
    final themeMode = ref.watch(themeModeProvider);
    return MaterialApp(
      title: 'Weather app',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: theme.light(),
      darkTheme: theme.dark(),
      themeMode: themeMode,
      home: home,
    );
  }
}
