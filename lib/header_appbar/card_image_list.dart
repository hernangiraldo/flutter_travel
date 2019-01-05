import 'package:flutter/material.dart';
import '../shared/card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      margin: EdgeInsets.only(
        top: 100.0
      ),
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage('assets/images/land1.jpeg'),
          CardImage('assets/images/land2.jpeg'),
          CardImage('assets/images/land3.jpeg'),
          CardImage('assets/images/land4.jpeg'),
        ],
      ),
    );
  }

}