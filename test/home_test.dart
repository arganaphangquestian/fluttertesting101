import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertesting101/main.dart';

void main() {
  group('Home Widget', () {
    testWidgets('Find Increment Button', (WidgetTester tester) async {
      await tester.pumpWidget(Application());
      final buttonInc = find.textContaining("Count 0");

      expect(buttonInc, findsOneWidget);
    });

    testWidgets("Click Increment Button Success", (WidgetTester tester) async {
      await tester.pumpWidget(Application());

      await tester.tap(find.byKey(Key("IncButton")));
      await tester.pump();

      expect(find.text("Count 0"), findsNothing);
      expect(find.text("Count 1"), findsOneWidget);
    });
  });
}
