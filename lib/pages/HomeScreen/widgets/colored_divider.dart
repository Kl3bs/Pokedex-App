import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ColoredDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 5,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
              HexColor("#6E95FD"),
              HexColor("#6FDEFA"),
              HexColor("#8DE061"),
              HexColor("#51E85E")
            ])));
  }
}
