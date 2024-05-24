import 'package:flutter/material.dart';
import 'package:solar_energy_prediction/core/extensions/app_context_extension.dart';

class PrimaryElevatedButton extends StatelessWidget {
  final Widget? child;
  final VoidCallback? onPressed;

  const PrimaryElevatedButton({
    super.key,
    this.child,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colorsScheme;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: colors.primary,
        foregroundColor: colors.onPrimary,
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
