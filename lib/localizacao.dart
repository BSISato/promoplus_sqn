import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Localizacao extends StatelessWidget {

  Localizacao(this.listType);
  final String listType;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              listType,
              style: new TextStyle(color: const Color(0xFFFFFFFF)),
              //style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
    );
  }
}