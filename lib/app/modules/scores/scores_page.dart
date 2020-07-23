import 'package:flutter/material.dart';
import 'package:flutter_genius/app/modules/scores/scores_controller.dart';
import 'package:flutter_genius/app/modules/scores/scores_module.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScoresPage extends StatefulWidget {
  final String title;

  const ScoresPage({Key key, this.title = "Scores"}) : super(key: key);

  @override
  _ScoresPageState createState() => _ScoresPageState();
}

class _ScoresPageState extends State<ScoresPage> {
  ScoresController controller = ScoresModule.to.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Observer(
          builder: (context) {
            if (controller.scores?.length == null) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
              itemCount: controller.scores.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: (index == 0 || index == 1 || index == 2)?FaIcon(FontAwesomeIcons.medal):SizedBox(width: 10,),
                  title: Text(controller.scores[index].name),
                  trailing: Text(controller.scores[index].score),
                );
              },
            );
          },
        ));
  }
}
