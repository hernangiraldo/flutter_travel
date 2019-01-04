import 'package:flutter/material.dart';
import 'review.dart';

class ReviewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Review('assets/images/thum.jpeg', 'Aquiles Quito', 1, 2, 'Un lindo lugar'),
          Review('assets/images/thum.jpeg', 'Aquiles Quito', 1, 5, 'Un lindo lugar'),
          Review('assets/images/thum.jpeg', 'Aquiles Quito', 1, 2, 'Un lindo lugar'),
          Review('assets/images/thum.jpeg', 'Aquiles Quito', 1, 2, 'Un lindo lugar'),
          Review('assets/images/thum.jpeg', 'Aquiles Quito', 1, 2, 'Un lindo lugar'),
          Review('assets/images/thum.jpeg', 'Aquiles Quito', 1, 2, 'Un lindo lugar')
        ],
      ),
    );
  }

}