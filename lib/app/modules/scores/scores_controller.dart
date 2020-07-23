import 'package:flutter_genius/app/modules/scores/models/score.dart';
import 'package:flutter_genius/app/modules/scores/repositories/scores_repository.dart';
import 'package:mobx/mobx.dart';

part 'scores_controller.g.dart';

class ScoresController = _ScoresBase with _$ScoresController;

abstract class _ScoresBase with Store {

  ScoresRepository repository;

  @observable
  ObservableList<Scores> scores;

  _ScoresBase(this.repository){
    repository.getScores().then((result)=>scores=result.asObservable());
  }
}
