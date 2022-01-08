import 'package:flutter/material.dart';
import 'package:pokedex_app/controllers/pokemon_controller.dart';
import 'package:pokedex_app/models/pokemonInfo.dart';
import 'package:pokedex_app/pages/HomeScreen/widgets/bottom_nav.dart';
import 'package:pokedex_app/pages/HomeScreen/widgets/colored_divider.dart';
import 'package:pokedex_app/pages/HomeScreen/widgets/top_bar.dart';
import 'package:pokedex_app/widgets/pokemon_item/pokemon_item.dart';
import 'package:basic_utils/basic_utils.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  List<PokemonInfo> pokemonList = [];
  var response;

  initState() {
    super.initState();
    getPokemonList();
  }

  Future<void> getPokemonList() async {
    pokemonList = await PokemonController().getPokemons();

    print(pokemonList);
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
                    child: ListView.builder(
              itemCount: pokemonList.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Center(
                      child: InkWell(
                    onTap: () {},
                    child: PokemonItem(
                      name: StringUtils.capitalize(pokemonList[index].name),
                      id: pokemonList[index].id,
                    ),
                  )),
                );
              },
            )))
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
