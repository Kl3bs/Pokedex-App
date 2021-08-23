import 'package:flutter/material.dart';
import 'package:pokedex_app/config/icons.dart';
import 'package:pokedex_app/pages/HomeScreen/widgets/colored_divider.dart';

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Column(
        children: [
          ColoredDivider(),
          SizedBox(
            height: 115,
            child: BottomNavigationBar(
              currentIndex: 0,
              selectedItemColor: Colors.black,
              selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
              items: [
                BottomNavigationBarItem(
                    icon: Column(
                      children: [
                        pikachuIcon,
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    label: "Pokemon"),
                BottomNavigationBarItem(
                    icon: Column(
                      children: [
                        diskIcon,
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    label: "Moves"),
                BottomNavigationBarItem(
                    icon: Column(
                      children: [
                        candyIcon,
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    label: "Itens"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
