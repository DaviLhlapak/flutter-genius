import 'dart:math';

import 'package:flutter_genius/app/modules/scores/repositories/scores_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {

  final ScoresRepository repository;

  @observable
  int ultimoScore = 0;

  @observable
  bool jogando = false;

  @observable
  int rounds = 0;

  @observable
  ObservableList<bool> btns = [false,false,false,false].asObservable();

  @observable
  List<int> sequencia = [];

  @observable
  List<int> sequenciaDigitada = [];

  _HomeBase(this.repository);

  @action
  clickBtn(int btn){
    btns[btn] = !btns[btn];
  }

  @action
  gerarNovoDigito(){
    Random rand = Random();
    sequencia.add(rand.nextInt(4));
  }

  @action
  salvarDigito(int digito){
    sequenciaDigitada.add(digito);
  }

  @action
  resetRounds(){
    rounds = 0;
    sequenciaDigitada.clear();
    sequencia.clear();
  }

  @action
  iniciarGame(){
    resetRounds();
    jogando = true;
  }

  @observable
  String nomeJogador = "";

  @action
  setNome(String value){
    nomeJogador = value;
  }

  @action
  setScore(int value)=>ultimoScore=value;

  void enviarScore(){
    repository.salvarScore(score: ultimoScore,name: nomeJogador);
  }
}
