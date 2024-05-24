import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solar_energy_prediction/core/theme/theme_provider.dart';

class ThemeButton extends ConsumerWidget {
  const ThemeButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLight = ref.watch(themeModeProvider) == ThemeMode.light;
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).viewPadding.top + 80.0,
        right: 12.0,
      ),
      child: Container(
        height: 38,
        width: 38,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.7),
          borderRadius: BorderRadius.circular(4),
        ),
        child: IconButton(
          key: const Key('theme_button_on_tap'),
          onPressed: () {
            ref.read(themeModeProvider.notifier).state =
                isLight ? ThemeMode.dark : ThemeMode.light;
          },
          icon: Icon(
            isLight ? Icons.dark_mode_outlined : Icons.light_mode,
            color: Colors.black.withOpacity(0.6),
          ),
        ),
      ),
    );
  }
}
