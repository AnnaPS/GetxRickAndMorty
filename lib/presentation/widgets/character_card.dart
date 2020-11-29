import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxflutterexample/data/model/characters.dart';
import 'package:getxflutterexample/presentation/pages/detail_character_page.dart';
import 'package:google_fonts/google_fonts.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard(this.character, {Key key, Character characeter})
      : super(key: key);
  final Character character;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(DetailCharacterPage(), arguments: character);
      },
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
          ),
        ),
        elevation: 8,
        color: Colors.grey[200],
        margin: EdgeInsets.all(10.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image(
                  image: NetworkImage(character.image),
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.black45,
                height: 40,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.only(left: 8.0, top: 4.0),
                        child: Text(
                          character.name,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.piedra(
                            textStyle:
                                TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
