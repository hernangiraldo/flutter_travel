import 'package:flutter/material.dart';
import 'home.dart';
import 'search_travel.dart';
import 'profile/profile.dart';

class TravelApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TravelApp();
  }

}

class _TravelApp extends State<TravelApp> {

  int indexTab = 0;
  final List<Widget> widgetsChildren = [
    Home(),
    SearchTravel(),
    Profile()
  ];

  onTappedTab(int index) {
    setState(() {
      indexTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: onTappedTab,
          currentIndex: indexTab,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('')
            )
          ],
        ),
      ),
      body: widgetsChildren[indexTab]
    );
  }
}