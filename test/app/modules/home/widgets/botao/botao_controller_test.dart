import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter_genius/app/modules/home/widgets/botao/botao_controller.dart';
import 'package:flutter_genius/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  BotaoController botao;

  setUp(() {
    botao = HomeModule.to.get<BotaoController>();
  });

  group('BotaoController Test', () {
    test("First Test", () {
      expect(botao, isInstanceOf<BotaoController>());
    });

    test("Set Value", () {
      expect(botao.value, equals(0));
      botao.increment();
      expect(botao.value, equals(1));
    });
  });
}
