import 'package:flutter/material.dart';
import '../shared/stars.dart';

class Review extends StatelessWidget {

  String pathImage;
  String name;
  int reviews;
  int photos;
  String comment;

  Review (
    this.pathImage,
    this.name,
    this.reviews,
    this.photos,
    this.comment
  );

  @override
  Widget build(BuildContext context) {

    final photo = Container(
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        name,
        style: TextStyle(
          fontSize: 17.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.bold
        ),
      ),
    );

    final reviewPhotos = Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            left: 20.0,
            top: 5.0,
            bottom: 5.0
          ),
          child: Text(
            '$reviews reviews - $photos photos',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 12.0,
              fontFamily: 'Lato',
              color: Color(0xFFcccccc)
            ),
          )
        ),
        Container(
          margin: EdgeInsets.only(
            left: 5.0
          ),
          child: new Stars(5, 12.0)
        )
      ],
    );

    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        '$comment',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 14.0,
          fontFamily: 'Lato'
        ),
      )
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        reviewPhotos,
        userComment
      ],
    );

    return Container(
      padding: EdgeInsets.only(
        top: 15.0,
        bottom: 15.0
      ),
      decoration: BoxDecoration(
        border: BorderDirectional(
          bottom: BorderSide(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            width: 1.0,
            style: BorderStyle.solid
          )
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          photo,
          userDetails
        ],
      )
    );
  }

}