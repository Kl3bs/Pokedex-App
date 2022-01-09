import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pokedex_app/controllers/pokemon_controller.dart';
import 'package:pokedex_app/pages/HomeScreen/widgets/bottom_nav.dart';
import 'package:pokedex_app/pages/HomeScreen/widgets/colored_divider.dart';
import 'package:pokedex_app/pages/HomeScreen/widgets/top_bar.dart';
import 'package:pokedex_app/widgets/pokemon_item/pokemon_item.dart';
import 'package:basic_utils/basic_utils.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            TopBar(),
            ColoredDivider(),
            Expanded(
                child: Container(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return FutureBuilder(
                      future: PokemonController().getPokemonById(index + 1),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          var pokemon = jsonDecode(snapshot.data.toString());
                          return Container(
                            child: Center(
                                child: InkWell(
                              onTap: () async {
                                print(pokemon["types"].runtimeType);
                              },
                              child: PokemonItem(
                                name: StringUtils.capitalize(pokemon["name"]),
                                id: int.parse(pokemon["number"]),
                                types: pokemon["types"],
                              ),
                            )),
                          );
                        } else {
                          return SpinKitFadingCircle(
                            color: Colors.green,
                            size: 80.0,
                          );
                        }
                      });
                },
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
