import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterInfoWidget extends StatefulWidget {
  FooterInfoWidget(this.character, this.title, {Key key, String characeter})
      : super(key: key);
  final String character;
  final String title;

  @override
  _FooterInfoWidget createState() => _FooterInfoWidget();
}

class _FooterInfoWidget extends State<FooterInfoWidget>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );

    animation = Tween(begin: -1.0, end: 1.0).animate(
      CurvedAnimation(parent: animationController, curve: Curves.bounceInOut),
    );
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                widget.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.piedra(
                  textStyle: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: FadeTransition(
                opacity: animationController.drive(
                  CurveTween(curve: Curves.easeInToLinear),
                ),
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.green, Colors.black, Colors.blue],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, right: 8, left: 8),
                    child: Text(widget.character,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.piedra(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 24))),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
