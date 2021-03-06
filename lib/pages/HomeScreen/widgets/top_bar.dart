import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pokedex_app/pages/HomeScreen/widgets/search_input.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
            HexColor("#deeafa"),
            HexColor("#def4fa"),
            HexColor("#dbf6db")
          ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Flutter Pokedex",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              height: 1,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: SearchInput(),
          ),
        ],
      ),
    );
  }
}
