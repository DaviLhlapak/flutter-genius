import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_genius/app/modules/home/home_controller.dart';
import 'package:flutter_genius/app/modules/home/home_module.dart';
import 'package:flutter_genius/app/modules/home/widgets/botao/botao_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController _homeController = HomeModule.to.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Observer(builder: (_) {
              return Text("Round ${_homeController.rounds}", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
              ),);
            }),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Observer(
                  builder: (_) {
                    return Expanded(
                      flex: 1,
                      child: BotaoWidget(
                        enabled: _homeController.jogando,
                        click: () {
                          _homeController.salvarDigito(0);
                          _homeController.clickBtn(0);
                          verificarClick(context);
                          Future.delayed(Duration(milliseconds: 200), () {
                            _homeController.clickBtn(0);
                          });
                        },
                        clicked: _homeController.btns[0],
                        colorInitial: Colors.green[600],
                        colorClicked: Colors.green[300],
                      ),
                    );
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                Observer(
                  builder: (_) {
                    return Expanded(
                      flex: 1,
                      child: BotaoWidget(
                        enabled: _homeController.jogando,
                        click: () {
                          _homeController.salvarDigito(1);
                          _homeController.clickBtn(1);
                          verificarClick(context);
                          Future.delayed(Duration(milliseconds: 200), () {
                            _homeController.clickBtn(1);
                          });
                        },
                        clicked: _homeController.btns[1],
                        colorInitial: Colors.red[600],
                        colorClicked: Colors.red[300],
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Observer(
                  builder: (_) {
                    return Expanded(
                      flex: 1,
                      child: BotaoWidget(
                        enabled: _homeController.jogando,
                        click: () {
                          _homeController.salvarDigito(2);
                          _homeController.clickBtn(2);
                          verificarClick(context);
                          Future.delayed(Duration(milliseconds: 200), () {
                            _homeController.clickBtn(2);
                          });
                        },
                        clicked: _homeController.btns[2],
                        colorInitial: Colors.yellow[600],
                        colorClicked: Colors.yellow[300],
                      ),
                    );
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                Observer(
                  builder: (_) {
                    return Expanded(
                      flex: 1,
                      child: BotaoWidget(
                        enabled: _homeController.jogando,
                        click: () {
                          _homeController.salvarDigito(3);
                          _homeController.clickBtn(3);
                          verificarClick(context);
                          Future.delayed(Duration(milliseconds: 200), () {
                            _homeController.clickBtn(3);
                          });
                        },
                        clicked: _homeController.btns[3],
                        colorInitial: Colors.blue[600],
                        colorClicked: Colors.blue[300],
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Observer(
              builder: (_) {
                if (_homeController.jogando) {
                  return SizedBox(
                    height: 50,
                  );
                } else {
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: RaisedButton(
                          color: Colors.purple,
                          onPressed: () {
                            _homeController.iniciarGame();
                            _homeController.gerarNovoDigito();
                            rodarDigitos();
                            _homeController.rounds++;
                          },
                          child: Text("Jogar",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                          ),),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: RaisedButton(
                          color: Colors.orange,
                          onPressed: () {
                            Navigator.pushNamed(context, "/records");
                          },
                          child: Text("Recordes",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30
                          ),),
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  void rodarDigitos() {
    int seconds = 1;
    _homeController.sequencia.forEach((e) {
      Future.delayed(Duration(milliseconds: 500 * seconds), () {
        _homeController.clickBtn(e);
      }).then((_) {
        Future.delayed(Duration(milliseconds: 200), () {
          _homeController.clickBtn(e);
        });
      });
      seconds++;
    });
  }

  void verificarClick(BuildContext context) {
    if (_homeController.sequenciaDigitada.last ==
        _homeController.sequencia[_homeController.sequenciaDigitada.length - 1]){
      print("Acertou");
      if(_homeController.sequenciaDigitada.length == _homeController.sequencia.length){
        _homeController.sequenciaDigitada.clear();
        _homeController.gerarNovoDigito();
        rodarDigitos();
        _homeController.rounds++;
      }
    }else{
      _homeController.setScore(_homeController.rounds);
      showDialog(context: context,builder: (BuildContext context){
        return AlertDialog(
          content: Text("Sua pontuação foi ${_homeController.rounds}"),
          title: Text("Você errou :("),
          actions: <Widget>[
            FlatButton(
              child: Text("Salvar Pontuação"),
              onPressed: (){
                showDialog(context: context,builder: (BuildContext context)
                {
                  return AlertDialog(
                    title: Text("Salvar Pontuação"),
                    content: TextField(
                      decoration: InputDecoration(
                        hintText: "Seu Nome",
                      ),
                      onChanged: (value){
                        _homeController.setNome(value);
                      },
                    ),
                    actions: <Widget>[
                      FlatButton(
                        child: Text("Salvar"),
                        onPressed: (){
                          _homeController.enviarScore();
                          Navigator.pop(context);
                          Navigator.pop(context);
                        }
                      ),
                      FlatButton(
                          child: Text("Cancelar"),
                          onPressed: (){
                            Navigator.pop(context);
                          }
                      )
                    ],
                  );
                });
              },
            ),
            FlatButton(
              child: Text("Jogar Novamente"),
              onPressed: (){
                Navigator.pop(context);
              },
            )
          ],
        );
      });
      Future.delayed(Duration(milliseconds: 1000), () {
        _homeController.resetRounds();
        _homeController.jogando = false;
      });
    }
  }
}
