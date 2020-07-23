import 'package:mobx/mobx.dart';

part 'botao_controller.g.dart';

class BotaoController = _BotaoBase with _$BotaoController;

abstract class _BotaoBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
