import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:getxflutterexample/data/model/characters.dart';

class CharacterDetailController extends GetxController {
  Characters _character = Characters();

  var _characterObservable = Characters().obs;

  Characters get getCharacter {
    return this._character;
  }
}
