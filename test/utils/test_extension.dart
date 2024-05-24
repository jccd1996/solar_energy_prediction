import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'base_template_screen.dart';

extension TesterExtension on WidgetTester {
  Future<void> pumpApp({required Widget screen, List<Override>? overrides}) {
    return pumpWidget(
      BaseTemplateScreen(
        overrides: overrides,
        screen: screen,
      ),
    );
  }
}
