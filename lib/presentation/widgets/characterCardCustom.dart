import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxflutterexample/data/model/characters.dart';
import 'package:getxflutterexample/presentation/pages/detail_character_page.dart';
import 'package:google_fonts/google_fonts.dart';

class CardCharacter extends StatelessWidget {
  const CardCharacter(this.character, {Key key, Character characeter})
      : super(key: key);
  final Character character;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(DetailCharacterPage(), arguments: character);
      },
      child: Container(
        height: 160,
        margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        child: Stack(
          children: [
            Container(
              height: 150.0,
              margin: EdgeInsets.only(left: 46.0, right: 10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.green, Colors.black, Colors.blue],
                ),
                color: Colors.green,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 10.0,
                    offset: Offset(1.0, 3.0),
                  )
                ],
              ),
            ),
            Positioned(
              left: 120,
              top: 55,
              child: Row(
                children: [
                  Container(
                    width: 250,
                    child: Text(
                      character.name,
                      maxLines: 2,
                      textDirection: TextDirection.ltr,
                      style: GoogleFonts.piedra(
                        textStyle: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(blurRadius: 5, color: Colors.grey, spreadRadius: 2)
                ],
              ),
              margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 6),
              child: Hero(
                tag: character.id,
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(character.image),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
