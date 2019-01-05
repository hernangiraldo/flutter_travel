import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home.dart';
import 'search_travel.dart';
import 'profile/profile.dart';

class TravelAppCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.indigo),
              title: Text('')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.indigo),
              title: Text('')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.indigo),
              title: Text('')
            )
          ],
        ),

        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(builder: (BuildContext context) => Home());
              break;
            case 1:
              return CupertinoTabView(builder: (BuildContext context) => SearchTravel());
              break;
            case 2:
              return CupertinoTabView(builder: (BuildContext context) => Profile());
              break;
          }
        }
      ),
    );
  }

}
