import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getxflutterexample/data/controllers/charactersController.dart';
import 'package:getxflutterexample/presentation/widgets/characterCardCustom.dart';
import 'package:getxflutterexample/presentation/widgets/character_card.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rick and Morty',
          style: GoogleFonts.piedra(),
        ),
      ),
      body: GetBuilder<CharacterController>(builder: (controller) {
        return controller.getCharacters.length == 0
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      "Characters on Rick & Morty serie",
                      style: GoogleFonts.piedra(
                        textStyle: TextStyle(fontSize: 45),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: ListView.builder(
                          itemCount: controller.getCharacters.length,
                          itemBuilder: (context, index) =>
                              CardCharacter(controller.getCharacters[index])),
                    ),
                  ],
                ),
              );
      }),
    );
  }
}
