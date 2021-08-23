import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PokemonItem extends StatelessWidget {
  const PokemonItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 85,
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset("img/pokemon.png"),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Bulbasaur",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "#001",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: HexColor("#979797"),
                          height: 1.5,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("img/Grass.png"),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset("img/Poison.png"),
                ],
              )
            ],
          ),
        ),
        Divider(
          height: 20,
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),
      ],
    );
  }
}
