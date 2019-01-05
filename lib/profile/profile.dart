import 'package:flutter/material.dart';
import 'header/profile_background.dart';
import 'header/header_profile.dart';
import 'places/places_list.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BackgroundProfile(),
        ListView(
          children: <Widget>[
            HeaderProfile(),
            PlacesList()
          ],
        ),
      ],
    );
  }

}