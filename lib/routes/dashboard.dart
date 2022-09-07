import 'package:flutter/material.dart';
import 'package:mybaseballcourt/views/homePageview.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Dashboard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _dashboard();
  }
}

class _dashboard extends State<Dashboard> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyPage(currentIndex),
      bottomNavigationBar: CurvedNavigationBar(
        index: currentIndex,
        color: Theme.of(context).primaryColor,
        buttonBackgroundColor: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).backgroundColor,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: const Duration(milliseconds: 600),
        height: 60.0,
        items: const <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.add, size: 30, color: Colors.white),
          Icon(Icons.compare_arrows, size: 30, color: Colors.white),
        ],
        onTap: (int newValue) {
          setState(() {
            currentIndex = newValue;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }

  Widget bodyPage(int value) {
    switch (value) {
      case 0 :
        return HomePage();
      case 1 :
        return const Text("Page 2");
      case 2 :
        return const Text("Page 3");
      default:
        return const Text("Aucune info");
    }
  }

}