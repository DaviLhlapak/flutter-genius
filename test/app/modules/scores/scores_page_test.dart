import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:flutter_genius/app/modules/scores/scores_page.dart';

main() {
  testWidgets('ScoresPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ScoresPage(title: 'Scores')));
    final titleFinder = find.text('Scores');
    expect(titleFinder, findsOneWidget);
  });
}
