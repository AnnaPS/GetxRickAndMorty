import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxflutterexample/data/model/characters.dart';
import 'package:getxflutterexample/presentation/widgets/footer_info.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailCharacterPage extends StatelessWidget {
  const DetailCharacterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Character character = Get.arguments;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          character.name,
          style: GoogleFonts.piedra(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FooterInfoWidget(character.status, "STATUS"),
              FooterInfoWidget(character.location.name, "LOCATION"),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FooterInfoWidget(character.gender, "GENDER"),
              FooterInfoWidget(character.species, "SPECIES"),
            ],
          ),
        ],
      ),
    );
  }
}
