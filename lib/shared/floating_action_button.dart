import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {

  bool pressed = false;

  void onPressedFav() {
    setState(() {
      pressed = !this.pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      onPressed: onPressedFav,
      child: Icon(
        this.pressed ? Icons.favorite : Icons.favorite_border
      ),
    );
  }

}