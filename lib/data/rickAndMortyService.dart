import 'dart:convert';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'model/characters.dart';
import 'package:http/http.dart' as http;

class RickAndMortyService extends GetxService {
  final String _RICK_AND_MORTY_URL_CHARACTERS =
      "https://rickandmortyapi.com/api/character/";

  Future<List<Character>> getCharacters() async {
    var response = await http.get(_RICK_AND_MORTY_URL_CHARACTERS);
    var results = jsonDecode(response.body)['results'] as List;
    return results
        .map((characterJson) => Character.fromJson(characterJson))
        .toList();
  }
}
