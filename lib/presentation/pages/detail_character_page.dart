import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxflutterexample/data/model/characters.dart';

class DetailCharacterPage extends StatelessWidget {
  const DetailCharacterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Character character = Get.arguments;
    return Scaffold(
      body: Center(
        child: Text(character.status),
      ),
    );
  }
}
