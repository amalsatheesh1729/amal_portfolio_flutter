import 'package:amal_portfolio/DRY.dart';
import 'package:amal_portfolio/MobileScreens/Mobile_Personal.dart';
import 'package:amal_portfolio/WebScreens/Proffessional.dart';
import 'package:amal_portfolio/WebScreens/contact.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';




import 'package:animated_text_kit/animated_text_kit.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        drawer:drawer(context),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              CircleAvatar(
                radius: 80,
                  backgroundImage:
                      AssetImage('lib/assets/portfolio-final.jpg')),
              AnimatedTextKit(
                  pause: Duration(seconds: 3),
                  repeatForever: true,
                  animatedTexts: [
                    TypewriterAnimatedText(
                        "Hi, \n\nIam Amal\n\nIam a full stack developer\n\n from India\n\n",
                        speed: Duration(milliseconds: 200),
                        textStyle: GoogleFonts.creepster()),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: getsocialicons()
              ),
            ],
          ),
        ));
  }
}
