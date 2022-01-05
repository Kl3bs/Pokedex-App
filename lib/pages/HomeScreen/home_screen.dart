import 'package:flutter/material.dart';
import 'package:pokedex_app/controllers/pokemon_controller.dart';
import 'package:pokedex_app/pages/HomeScreen/widgets/bottom_nav.dart';
import 'package:pokedex_app/pages/HomeScreen/widgets/colored_divider.dart';
import 'package:pokedex_app/pages/HomeScreen/widgets/top_bar.dart';
import 'package:pokedex_app/widgets/pokemon_item/pokemon_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    PokemonController().getPokemons();
  }

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
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Container(
                    child: const Center(child: PokemonItem()),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
