import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solar_energy_prediction/core/theme/theme.dart';
import 'package:solar_energy_prediction/core/theme/theme_provider.dart';
import 'package:solar_energy_prediction/core/theme/theme_util.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:solar_energy_prediction/features/request_permission/presentation/screens/request_permission_screen.dart';

void main() async {
  await dotenv.load(fileName: 'assets/.env');
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

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
      home: const RequestPermissionScreen(),
    );
  }
}
