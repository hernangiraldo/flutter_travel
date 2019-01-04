import 'package:flutter/material.dart';
import 'floating_action_button.dart';

class CardImage extends StatelessWidget {

  String pathImage;

  CardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      width: 250.0,
      margin: EdgeInsets.only(
        left: 10.0,
        right: 10.0
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          )
        ]
      ),
    );

    return Stack(
      alignment: Alignment(0.8, 1.25),
      children: <Widget>[
        card,
        FloatingActionButtonGreen()
      ],
    );
  }

}