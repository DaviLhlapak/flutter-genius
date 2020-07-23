// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$jogandoAtom = Atom(name: '_HomeBase.jogando');

  @override
  bool get jogando {
    _$jogandoAtom.context.enforceReadPolicy(_$jogandoAtom);
    _$jogandoAtom.reportObserved();
    return super.jogando;
  }

  @override
  set jogando(bool value) {
    _$jogandoAtom.context.conditionallyRunInAction(() {
      super.jogando = value;
      _$jogandoAtom.reportChanged();
    }, _$jogandoAtom, name: '${_$jogandoAtom.name}_set');
  }

  final _$roundsAtom = Atom(name: '_HomeBase.rounds');

  @override
  int get rounds {
    _$roundsAtom.context.enforceReadPolicy(_$roundsAtom);
    _$roundsAtom.reportObserved();
    return super.rounds;
  }

  @override
  set rounds(int value) {
    _$roundsAtom.context.conditionallyRunInAction(() {
      super.rounds = value;
      _$roundsAtom.reportChanged();
    }, _$roundsAtom, name: '${_$roundsAtom.name}_set');
  }

  final _$btnsAtom = Atom(name: '_HomeBase.btns');

  @override
  ObservableList<bool> get btns {
    _$btnsAtom.context.enforceReadPolicy(_$btnsAtom);
    _$btnsAtom.reportObserved();
    return super.btns;
  }

  @override
  set btns(ObservableList<bool> value) {
    _$btnsAtom.context.conditionallyRunInAction(() {
      super.btns = value;
      _$btnsAtom.reportChanged();
    }, _$btnsAtom, name: '${_$btnsAtom.name}_set');
  }

  final _$sequenciaAtom = Atom(name: '_HomeBase.sequencia');

  @override
  List<int> get sequencia {
    _$sequenciaAtom.context.enforceReadPolicy(_$sequenciaAtom);
    _$sequenciaAtom.reportObserved();
    return super.sequencia;
  }

  @override
  set sequencia(List<int> value) {
    _$sequenciaAtom.context.conditionallyRunInAction(() {
      super.sequencia = value;
      _$sequenciaAtom.reportChanged();
    }, _$sequenciaAtom, name: '${_$sequenciaAtom.name}_set');
  }

  final _$sequenciaDigitadaAtom = Atom(name: '_HomeBase.sequenciaDigitada');

  @override
  List<int> get sequenciaDigitada {
    _$sequenciaDigitadaAtom.context.enforceReadPolicy(_$sequenciaDigitadaAtom);
    _$sequenciaDigitadaAtom.reportObserved();
    return super.sequenciaDigitada;
  }

  @override
  set sequenciaDigitada(List<int> value) {
    _$sequenciaDigitadaAtom.context.conditionallyRunInAction(() {
      super.sequenciaDigitada = value;
      _$sequenciaDigitadaAtom.reportChanged();
    }, _$sequenciaDigitadaAtom, name: '${_$sequenciaDigitadaAtom.name}_set');
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  dynamic clickBtn(int btn) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.clickBtn(btn);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic gerarNovoDigito() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.gerarNovoDigito();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic salvarDigito(int digito) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.salvarDigito(digito);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic resetRounds() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.resetRounds();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic iniciarGame() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.iniciarGame();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }
}
