import 'package:flutter_genius/app/app_module.dart';
import 'package:flutter_genius/app/modules/home/widgets/botao/botao_controller.dart';
import 'package:flutter_genius/app/modules/home/widgets/botao/botao_controller.dart';
import 'package:flutter_genius/app/modules/home/home_controller.dart';
import 'package:flutter_genius/app/modules/scores/repositories/scores_repository.dart';
import 'package:flutter_genius/app/modules/scores/scores_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_genius/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => BotaoController()),
        Bind((i) => BotaoController()),
        Bind((i) => HomeController(AppModule.to.get<ScoresRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/records', module: ScoresModule()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
