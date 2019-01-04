import 'package:flutter/material.dart';

class Stars extends StatelessWidget {

  int starts;
  double startsSize;

  Stars(this.starts, this.startsSize);

  @override
  Widget build(BuildContext context) {
    final starHalf = Container(
      margin: EdgeInsets.only(
        right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2c611),
        size: startsSize
      )
    );

    final starBorder = Container(
      margin: EdgeInsets.only(
        right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2c611),
        size: startsSize
      )
    );

    final star = Container(
      margin: EdgeInsets.only(
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2c611),
        size: startsSize
      )
    );

    return Row(
      children: <Widget>[
        star,
        star,
        star,
        starHalf,
        starBorder
      ],
    );
  }

}