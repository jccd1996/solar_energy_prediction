import 'package:flutter/material.dart';
import 'package:solar_energy_prediction/core/extensions/app_context_extension.dart';

class PrimaryTextButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;

  const PrimaryTextButton({
    super.key,
    required this.child,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colorsScheme;
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: colors.primary,
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
