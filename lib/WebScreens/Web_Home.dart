

import 'package:amal_portfolio/DRY.dart';
import 'package:amal_portfolio/WebScreens/Proffessional.dart';
import 'package:amal_portfolio/WebScreens/contact.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:animated_text_kit/animated_text_kit.dart';

import 'Personal.dart';



void _launchUrl(String _url) async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}



class WebHome extends StatelessWidget {
  const WebHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:getAppBar(context),
        body: Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedTextKit(
                            pause: Duration(seconds: 3),
                            repeatForever: true,
                            animatedTexts: [
                              TypewriterAnimatedText(
                                  "Hi, \n\nIam Amal\n\nIam a full stack developer\n\nfrom India\n\n",
                                  speed: Duration(milliseconds: 200),
                                  textStyle: GoogleFonts.creepster(
                                  )
                              ),
                            ]),
                        SizedBox(height: 100),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: getsocialicons(),)
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child:Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image:DecorationImage(
                          image: AssetImage('lib/assets/portfolio-final.jpg'),
                          fit:BoxFit.cover) ,
                    ),
                  ),
                )
              ],
            )

        ));
  }

}
