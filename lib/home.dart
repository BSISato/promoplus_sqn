import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:promoplus_sqn/promo1.dart';

class Home extends StatelessWidget {
  Home(this.listType);
  final String listType;

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: EdgeInsets.all(10.0),
      children: <Widget>[
        new Container(
          height: 100.0,
          decoration: new BoxDecoration(color: Colors.black),
          child: new ListTile(
            leading: CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage('image/hamb1.jpg'),
            ),
            title:
                Text("Búfalo burguer", style: TextStyle(color: Colors.white)),
            subtitle: Text(
                "Pão artesanal (sem ovo e sem leite) hambúrguer 200g,bacon, queijo prato, cebola roxa...",
                style: TextStyle(color: Colors.white)),
            onTap: () {
              print("hummmmm");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Promo1('0')),
              );
            },
          ),
        ),
        new Container(
          height: 100.0,
          decoration: new BoxDecoration(color: Colors.black),
          child: new ListTile(
            leading: CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage('image/pizza.jpg'),
            ),
            title:
                Text("Marguerita", style: TextStyle(color: Colors.white)),
            subtitle: Text(
                "Pão artesanal (sem ovo e sem leite) hambúrguer 200g,bacon, queijo prato, cebola roxa...",
                style: TextStyle(color: Colors.white)),
            onTap: () {
              print("hummmmm");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Promo1('0')),
              );
            },
          ),
        ),
        new Container(
          height: 100.0,
          decoration: new BoxDecoration(color: Colors.black),
          child: new ListTile(
            leading: CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage('image/hotfila.jpg'),
            ),
            title:
                Text("Hot Filadelfia", style: TextStyle(color: Colors.white)),
            subtitle: Text(
                "Pão artesanal (sem ovo e sem leite) hambúrguer 200g,bacon, queijo prato, cebola roxa...",
                style: TextStyle(color: Colors.white)),
            onTap: () {
              print("hummmmm");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Promo1('0')),
              );
            },
          ),
        ),
        new Container(
          height: 100.0,
          decoration: new BoxDecoration(color: Colors.black),
          child: new ListTile(
            leading: CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage('image/tabule.jpg'),
            ),
            title:
                Text("Tabule", style: TextStyle(color: Colors.white)),
            subtitle: Text(
                "Pão artesanal (sem ovo e sem leite) hambúrguer 200g,bacon, queijo prato, cebola roxa...",
                style: TextStyle(color: Colors.white)),
            onTap: () {
              print("hummmmm");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Promo1('0')),
              );
            },
          ),
        ),
        new Container(
          height: 100.0,
          decoration: new BoxDecoration(color: Colors.black),
          child: new ListTile(
            leading: CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage('image/hamb2.jpg'),
            ),
            title:
                Text("Búfalo Burguer", style: TextStyle(color: Colors.white)),
            subtitle: Text(
                "Pão artesanal (sem ovo e sem leite) hambúrguer 200g,bacon, queijo prato, cebola roxa...",
                style: TextStyle(color: Colors.white)),
            onTap: () {
              print("hummmmm");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Promo1('0')),
              );
            },
          ),
        ),
        new Container(
          height: 100.0,
          decoration: new BoxDecoration(color: Colors.black),
          child: new ListTile(
            leading: CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage('image/hamb3.jpg'),
            ),
            title:
                Text("Bufalo Burguer", style: TextStyle(color: Colors.white)),
            subtitle: Text(
                "Pão artesanal (sem ovo e sem leite) hambúrguer 200g,bacon, queijo prato, cebola roxa...",
                style: TextStyle(color: Colors.white)),
            onTap: () {
              print("hummmmm");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Promo1('0')),
              );
            },
          ),
        ),
        new Container(
          height: 100.0,
          decoration: new BoxDecoration(color: Colors.black),
          child: new ListTile(
            leading: CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage('image/hamb6.jpg'),
            ),
            title:
                Text("Bufalo Burguer", style: TextStyle(color: Colors.white)),
            subtitle: Text(
                "Pão artesanal (sem ovo e sem leite) hambúrguer 200g,bacon, queijo prato, cebola roxa...",
                style: TextStyle(color: Colors.white)),
            onTap: () {
              print("hummmmm");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Promo1('0')),
              );
            },
          ),
        )
      ],
    );
  }
}

