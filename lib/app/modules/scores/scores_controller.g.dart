// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scores_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ScoresController on _ScoresBase, Store {
  final _$scoresAtom = Atom(name: '_ScoresBase.scores');

  @override
  ObservableList<Scores> get scores {
    _$scoresAtom.context.enforceReadPolicy(_$scoresAtom);
    _$scoresAtom.reportObserved();
    return super.scores;
  }

  @override
  set scores(ObservableList<Scores> value) {
    _$scoresAtom.context.conditionallyRunInAction(() {
      super.scores = value;
      _$scoresAtom.reportChanged();
    }, _$scoresAtom, name: '${_$scoresAtom.name}_set');
  }
}
