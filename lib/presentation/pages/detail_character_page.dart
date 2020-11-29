import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxflutterexample/data/model/characters.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailCharacterPage extends StatelessWidget {
  const DetailCharacterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Character character = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          character.name,
          style: GoogleFonts.piedra(),
        ),
      ),
      body: Column(
        children: [
          Hero(
            tag: character.id,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60.0),
                      bottomRight: Radius.circular(60.0)),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(character.image),
                  )),
            ),
          ),
          FilterChip(
            label: Text("Hola"),
          )
        ],
      ),
    );
  }
}
