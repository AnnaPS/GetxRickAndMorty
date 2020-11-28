import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getxflutterexample/data/rickAndMortyService.dart';
import 'package:getxflutterexample/data/model/characters.dart';

class CharacterController extends GetxController {
  List<Character> _characters = [];

  List<Character> get getCharacters {
    return this._characters;
  }

  var characterObservable = Character().obs;

  final RickAndMortyService rickAndMortyService =
      Get.find<RickAndMortyService>();

  @override
  void onInit() async {
    super.onInit();
    _characters = await rickAndMortyService.getCharacters();
    update();
  }

  @override
  void onReady() async {
    super.onReady();
    _characters = await rickAndMortyService.getCharacters();
    update();
  }
}
