import 'package:flutter/material.dart';

class Description extends StatelessWidget {

  String descriptionPlace;

  Description(this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: new Text(
        descriptionPlace,
        style: const TextStyle(
          fontSize: 16.0,
          color: Color(0xFF56575a),
          fontFamily: 'Lato'
        ),
      ),
    );
  }

}