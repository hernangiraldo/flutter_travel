import 'package:flutter/material.dart';
import 'description/description_place.dart';
import 'review/reviews_list.dart';
import 'header_appbar/header_appbar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            new DescriptionPlace(
              'Duwili Ella',
              4,
              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."
            ),
            new ReviewsList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }

}