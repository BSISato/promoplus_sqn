import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Promo1 extends StatelessWidget {
  Promo1(this.listType);
  final String listType;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'image/jaca.png',
              fit: BoxFit.cover,
              height: 400.0,
            ),
            Text(
              "SI FUDE",
              style: TextStyle(fontSize: 100.0, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
