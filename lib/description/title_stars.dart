import 'package:flutter/material.dart';
import '../shared/stars.dart';

class TitleStars extends StatelessWidget {
  String namePlace;
  int stars;

  TitleStars(this.namePlace, this.stars);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 360.0,
            left: 20.0,
            right: 20.0
          ),
          child: Row(
            children: <Widget>[
              Text(
                namePlace,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Lato'
                ),
                textAlign: TextAlign.left,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 10.0
                ),
                child: Row(
                  children: <Widget>[
                    new Stars(this.stars, 20.0)
                  ],
                ),
              )
            ],
          )
        ),
      ],
    );
  }

}