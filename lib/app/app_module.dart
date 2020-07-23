import 'package:flutter_genius/app/app_controller.dart';
import 'package:flutter_genius/app/modules/scores/repositories/scores_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_genius/app/app_widget.dart';
import 'package:flutter_genius/app/modules/home/home_module.dart';
import 'package:hasura_connect/hasura_connect.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HasuraConnect("https://flutter-genius.herokuapp.com/v1/graphql")),

        Bind((i) => ScoresRepository(i.get<HasuraConnect>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
