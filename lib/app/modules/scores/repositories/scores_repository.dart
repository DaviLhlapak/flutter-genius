import 'package:flutter_genius/app/modules/scores/models/score.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mobx/mobx.dart';

class ScoresRepository extends Disposable {

  HasuraConnect client;

  ScoresRepository(this.client);

  Future<List<Scores>> getScores() async {
    var query = '''
      query getScores {
        scores(order_by: {score: desc}, limit: 10) {
          name
          score
        }
      }
    ''';

    var snapshot = await client.query(query);

    return Scores.fromJsonList(snapshot["data"]["scores"] as List);
  }

  Future<bool> salvarScore({int score = 0, String name}) async {

    var mutation = '''
     mutation addScore(\$name: String, \$score: Int) {
        insert_scores(objects: {name: \$name, score: \$score}) {
          affected_rows
        }
      }
    ''';

    var snapshot = await client.mutation(mutation, variables: {
      "score": score,
      "name":name,
    });
    print(snapshot);
    return snapshot["data"]["insert_scores"]["affected_rows"] > 0;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
