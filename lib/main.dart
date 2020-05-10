import 'package:flutter/material.dart';
import 'package:promoplus_sqn/home.dart';
import 'package:promoplus_sqn/localizacao.dart';
import 'package:promoplus_sqn/lista.dart';
import 'package:promoplus_sqn/favoritos.dart';
import 'package:promoplus_sqn/perfil.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Promo + ou -',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFFFFFF), //cor fundo   0xFFFFFFFF   0xFF212121
        primaryColor: const Color(0xFF757575),
        primaryColorDark: const Color(0xFF167F67),
        accentColor: const Color(0xFFFFAD32), 
         
      ),
      home: new DashboardScreen(title: 'Promo + ou -'),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DashboardScreenState createState() => new _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }


  void navigationTapped(int page) {
    // Animating to the page.
    // You can use whatever duration and curve you like
    _pageController.animateToPage(page,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          widget.title,
          style: new TextStyle(color: const Color(0xFFFFFFFF)), //barra superior
        ),
      ),
      body: new PageView(
        children: [
          new Home("Homeeee"),
          new Localizacao("Localização"),
          new Lista("Lista Cupons"),
          new Favoritos("Favoritos"),
          new Perfil("Perfil"),
        ],
        
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
              // sets the background color of the `BottomNavigationBar`
              canvasColor: const Color(0xFF757575),  //cor da barra menu inferior
            ), // sets the inactive color of the `BottomNavigationBar`
        child: new BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.home,
                  color: const Color(0xFFFFFFFF),
                ),
                title: new Text(
                  "Home",
                  style: new TextStyle(
                    color: const Color(0xFFFFFFFF),
                  ),
                )),
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.location_on,
                  color: const Color(0xFFFFFFFF),
                ),
                title: new Text(
                  "Localização",
                  style: new TextStyle(
                    color: const Color(0xFFFFFFFF),
                  ),
                )),
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.assignment,
                  color: const Color(0xFFFFFFFF),
                ),
                title: new Text(
                  "Lista",
                  style: new TextStyle(
                    color: const Color(0xFFFFFFFF),
                  ),
                )),
                new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.favorite_border,
                  color: const Color(0xFFFFFFFF),
                ),
                title: new Text(
                  "Favoritos",
                  style: new TextStyle(
                    color: const Color(0xFFFFFFFF),
                  ),
                )),
                new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.account_box,
                  color: const Color(0xFFFFFFFF),
                ),
                title: new Text(
                  "Perfil",
                  style: new TextStyle(
                    color: const Color(0xFFFFFFFF),
                  ),
                ))
          ],
          onTap: navigationTapped,
          currentIndex: _page,
        ),
      ),
    );
  }
}
