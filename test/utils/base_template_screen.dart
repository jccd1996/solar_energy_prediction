import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'base_material_app.dart';

class BaseTemplateScreen extends StatelessWidget {
  final Widget screen;
  final List<Override>? overrides;

  const BaseTemplateScreen({
    super.key,
    required this.screen,
    this.overrides,
  });

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: overrides ?? [],
      child: BaseMaterialApp(home: screen),
    );
  }
}
