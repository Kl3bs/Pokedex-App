import 'package:dio/dio.dart';

class PokemonController {
  var dio = new Dio();

  Future getPokemons() async {
    try {
      var response = await dio.get('https://pokeapi.co/api/v2/pokemon?limit=6');
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
