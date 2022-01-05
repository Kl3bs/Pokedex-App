class PokemonItem {
  final int id;
  final String name;
  final String image_url;

  const PokemonItem(this.name, this.id, this.image_url);

  // factory PokemonItem.fromJson(Map<String, dynamic> json) {
  //   return PokemonItem(json["name"], json["id"], json["img_url"]);
  // }
}
