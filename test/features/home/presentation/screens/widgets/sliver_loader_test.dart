import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solar_energy_prediction/features/home/presentation/screens/widgets/sliver_loader.dart';

void main() {
  testWidgets('''
  GIVEN $SliverLoader
  THEN should render as expected
  ''', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverLoader(),
            ],
          ),
        ),
      ),
    );
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
