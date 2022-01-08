import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pokedex_app/models/pokemonInfo.dart';

class PokemonController {
  var dio = new Dio();
  String baseUrl = 'https://pokeapi.co/api/v2/pokemon?limit=6';

  //NOVA API:   https://pokeapi.glitch.me/v1/pokemon/greninja

  Future<List<PokemonInfo>> getPokemons() async {
    try {
      var response = await dio.get(baseUrl);
      var json = jsonDecode(response.toString());
      return getPokemonList(json["results"]);
    } catch (e) {
      throw Exception("Houve algum erro");
    }
  }

  Future getPokemonById(id) async {
    try {
      var response = await dio.get('https://pokeapi.glitch.me/v1/pokemon/$id');

      return response.data[0];

      // print(jsonEncode(response.toString()));
    } catch (e) {
      print(e);
    }
  }

  List<PokemonInfo> getPokemonList(json) {
    List<PokemonInfo> list = [];

    for (var i = 0; i < json.length; i++) {
      PokemonInfo item = PokemonInfo(name: json[i]["name"], id: i + 1);
      list.add(item);
    }

    return list;
  }
}
