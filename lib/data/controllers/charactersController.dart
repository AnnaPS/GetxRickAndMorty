import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getxflutterexample/data/model/characters.dart';
import 'package:getxflutterexample/data/service/rickAndMortyService.dart';

class CharacterController extends GetxController {
  List<Character> _characters = [];

  List<Character> get getCharacters {
    return this._characters;
  }

  var characterObservable = Character().obs;

  final RickAndMortyService rickAndMortyService =
      Get.find<RickAndMortyService>();

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(milliseconds: 1500), () async {
      _characters = await rickAndMortyService.getCharacters();
      update();
    });
  }

  @override
  void onReady() async {
    super.onReady();
    _characters = await rickAndMortyService.getCharacters();
    update();
  }
}
