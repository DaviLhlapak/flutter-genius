import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:flutter_genius/app/modules/home/widgets/botao/botao_widget.dart';

main() {
  testWidgets('BotaoWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(BotaoWidget()));
    final textFinder = find.text('Botao');
    expect(textFinder, findsOneWidget);
  });
}
