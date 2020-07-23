import 'package:flutter_genius/app/app_module.dart';
import 'package:flutter_genius/app/modules/scores/repositories/scores_repository.dart';
import 'package:flutter_genius/app/modules/scores/scores_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_genius/app/modules/scores/scores_page.dart';
import 'package:hasura_connect/hasura_connect.dart';

class ScoresModule extends ChildModule {
  @override
  List<Bind> get binds => [


    Bind((i) => ScoresController(AppModule.to.get<ScoresRepository>())),
  ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => ScoresPage()),
      ];

  static Inject get to => Inject<ScoresModule>.of();
}
