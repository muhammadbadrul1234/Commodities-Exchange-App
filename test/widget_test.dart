// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:untitled/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    //Verify that the text is displayed
    expect(find.text('Dhaka Stock Exchange'), findsOneWidget);
    expect(find.text('Feel the new experience of Stock'), findsOneWidget);

    // Verify that the button is displayed
    expect(find.text('Getting Started'), findsOneWidget);

    // Verify that the image is displayed
    expect(find.byType(Image), findsOneWidget);


  });
}
