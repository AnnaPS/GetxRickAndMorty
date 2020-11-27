import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getxflutterexample/data/controllers/charactersController.dart';

import 'detail_character_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<CharacterController>(builder: (controller) {
        return controller.getCharacters.length == 0
            ? Center(
                child: Text("No hay personajes"),
              )
            : ListView.builder(
                itemCount: controller.getCharacters.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(controller.getCharacters[index].name),
                  onTap: () {
                    Get.to(DetailCharacterPage());
                  },
                ),
              );
      }),
    );
  }
}
