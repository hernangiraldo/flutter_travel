import 'package:flutter/material.dart';
import 'title_stars.dart';
import 'description.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new TitleStars(namePlace, stars),
        new Description(descriptionPlace)
      ],
    );
  }
  
}