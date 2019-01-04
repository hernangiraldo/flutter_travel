import 'package:flutter/material.dart';
import 'title_stars.dart';
import 'description.dart';
import '../shared//button_purple.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TitleStars(namePlace, stars),
        Description(descriptionPlace),
        ButtonPurple('Navigate')
      ],
    );
  }
  
}