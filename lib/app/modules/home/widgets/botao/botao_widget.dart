import 'package:flutter/material.dart';

class BotaoWidget extends StatelessWidget {
  
  final Color colorInitial;
  final Color colorClicked;
  final bool clicked;
  final Function click;
  final bool enabled;

  BotaoWidget({Key key, this.colorInitial, this.colorClicked, this.clicked, this.click, this.enabled}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (enabled)?click:null,
      child: Container(
        width: double.infinity,
        height: 190,
        decoration: BoxDecoration(
          color: clicked? colorClicked: colorInitial,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
