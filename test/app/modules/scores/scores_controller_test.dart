import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter_genius/app/modules/scores/scores_controller.dart';
import 'package:flutter_genius/app/modules/scores/scores_module.dart';

void main() {
  initModule(ScoresModule());
  ScoresController scores;

  setUp(() {
    scores = ScoresModule.to.get<ScoresController>();
  });

  group('ScoresController Test', () {
    test("First Test", () {
      expect(scores, isInstanceOf<ScoresController>());
    });

    test("Set Value", () {
      expect(scores.value, equals(0));
      scores.increment();
      expect(scores.value, equals(1));
    });
  });
}
