import 'package:flutter/material.dart';
import 'package:pokedex_app/controllers/pokemon_controller.dart';
import 'package:pokedex_app/models/pokemonInfo.dart';
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
  List<PokemonInfo> pokemonList = [];
  List<dynamic> pokeInfo = [];

  initState() {
    super.initState();
    getPokemonList();
  }

  Future<void> getPokemonList() async {
    var temp = await PokemonController().getPokemons();

    setState(() {
      pokemonList = temp;
    });
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
                    child: FutureBuilder(
              future: PokemonController().getPokemons(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return ListView.builder(
                    itemCount: pokemonList.length,
                    itemBuilder: (context, index) {
                      var a = PokemonController().getPokemonById(index + 1);
                      print(a);
                      return Container(
                        child: Center(
                            child: InkWell(
                          onTap: () async {},
                          child: PokemonItem(
                            name:
                                StringUtils.capitalize(pokemonList[index].name),
                            id: pokemonList[index].id,
                          ),
                        )),
                      );
                    },
                  );
                } else {
                  return SpinKitFadingCircle(
                    color: Colors.green,
                    size: 150.0,
                  );
                }
              },
            )))
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
