import 'package:basic_utils/basic_utils.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PokemonItem extends StatelessWidget {
  final String name;
  final int id;
  final dynamic types;

  const PokemonItem(
      {Key? key, required this.name, required this.id, required this.types})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
                    Container(
                      width: 50,
                      height: 50,
                      child: Image.network(
                          'https://cdn.traction.one/pokedex/pokemon/$id.png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          name,
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
                          "#00$id",
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
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: Image.asset('assets/img/Types/${types[0]}.png'),
                    ),
                    types.length > 1
                        ? Container(
                            width: 50,
                            height: 50,
                            child:
                                Image.asset('assets/img/Types/${types[1]}.png'),
                          )
                        : Container()
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
      ),
    );
  }
}
