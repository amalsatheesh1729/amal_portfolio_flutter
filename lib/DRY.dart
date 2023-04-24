import 'dart:core';

import 'package:amal_portfolio/MobileScreens/Mobile_Home.dart';
import 'package:amal_portfolio/MobileScreens/Mobile_Proffesional.dart';
import 'package:amal_portfolio/WebScreens/Web_Home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'MobileScreens/Contact_Mobile.dart';
import 'MobileScreens/Mobile_Personal.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'WebScreens/Personal.dart';
import 'WebScreens/Proffessional.dart';
import 'WebScreens/contact.dart';

Future<void> launchUrl1(Uri _url) async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

List<Map<String,String>> projects=[
  {
    'name' :'An e-commerce store for home made products',
    'image':'https://firebasestorage.googleapis.com/v0/b/amal-portfolio-b1383.appspot.com/o/downloads%2Fhomemade1.png?alt=media&token=3eaa95ef-7d62-45ac-b98e-6a5b6049e184',
    'url':'https://divine-bloom-383508.web.app'
  },
  {
    'name' : 'An e-commerce store for home made products',
    'image':'https://firebasestorage.googleapis.com/v0/b/amal-portfolio-b1383.appspot.com/o/downloads%2Fhomemade2.png?alt=media&token=457b56ad-0250-436a-82db-6e19782358b8',
    'url':'https://divine-bloom-383508.web.app'
  },
  {
    'name' : 'An e-commerce store for home made products',
    'image':'https://firebasestorage.googleapis.com/v0/b/amal-portfolio-b1383.appspot.com/o/downloads%2Fhomemade3.png?alt=media&token=e7d43233-3979-4ca4-892c-8f4e6d84901b',
    'url':'https://divine-bloom-383508.web.app'
  },
  {
    'name' : 'An e-commerce store for home made products',
    'image':'https://firebasestorage.googleapis.com/v0/b/amal-portfolio-b1383.appspot.com/o/downloads%2Fhomemade4.png?alt=media&token=6c16b2ae-af6c-435f-8c1f-f951a846cf5f',
    'url':'https://divine-bloom-383508.web.app'
  },
  {
    'name' : 'An e-commerce store for home made products',
    'image':'https://firebasestorage.googleapis.com/v0/b/amal-portfolio-b1383.appspot.com/o/downloads%2Fhomemade5.png?alt=media&token=97fd1057-1f45-46c8-92c5-412b8ca30dab',
    'url':'https://divine-bloom-383508.web.app'
  },
  {
    'name' : 'An e-commerce store for home made products',
    'image':'https://firebasestorage.googleapis.com/v0/b/amal-portfolio-b1383.appspot.com/o/downloads%2Fhomemade6.png?alt=media&token=3a60f1ef-b6ad-4cc6-81f2-5779f8df6d0e',
    'url':'https://divine-bloom-383508.web.app'
  },
  {
    'name' : 'A full stack instagram clone',
    'image':'https://firebasestorage.googleapis.com/v0/b/amal-portfolio-b1383.appspot.com/o/downloads%2Finstagram1.png?alt=media&token=d33c7ebb-5f95-4452-8496-1c886051d21c',
    'url':'https://instagram-clone-43bb4.web.app'
  },
  {
    'name' : 'A full stack instagram clone',
    'image':'https://firebasestorage.googleapis.com/v0/b/amal-portfolio-b1383.appspot.com/o/downloads%2Finstagram2.png?alt=media&token=f91226db-1d10-47e3-a5cb-33bf64a9e4a9',
    'url':'https://instagram-clone-43bb4.web.app'
  },
  {
    'name' : 'A full stack instagram clone',
    'image':'https://firebasestorage.googleapis.com/v0/b/amal-portfolio-b1383.appspot.com/o/downloads%2Finstagram3.png?alt=media&token=17de2c63-ee7b-4ce5-9bcb-832fdce203a3',
    'url':'https://instagram-clone-43bb4.web.app'
  },
  {
    'name' : 'A full stack instagram clone',
    'image':'https://firebasestorage.googleapis.com/v0/b/amal-portfolio-b1383.appspot.com/o/downloads%2Finstagram4.png?alt=media&token=5d90a5af-a52e-41f6-b260-dae8998bc4c4',
    'url':'https://instagram-clone-43bb4.web.app'
  },
  {
    'name' : 'A full stack instagram clone',
    'image':'https://firebasestorage.googleapis.com/v0/b/amal-portfolio-b1383.appspot.com/o/downloads%2Finstagram5.png?alt=media&token=11cb29e7-1ed4-4f13-a241-e8fb3629fefb',
    'url':'https://instagram-clone-43bb4.web.app'
  },
  {
    'name' : 'Portfolio App',
    'image':'https://firebasestorage.googleapis.com/v0/b/amal-portfolio-b1383.appspot.com/o/downloads%2Fportfolio1.png?alt=media&token=c840fbe4-20bd-45ec-bc22-c92e0a6ac9f7',
    'url':'https://www.amalsatheesh.com'
  },
  {
    'name' : 'Portfolio App',
    'image':'https://firebasestorage.googleapis.com/v0/b/amal-portfolio-b1383.appspot.com/o/downloads%2Fportfolio2.png?alt=media&token=176f1831-67ec-461e-9647-7e8c2fccbdbf',
    'url':'https://www.amalsatheesh.com'
  },
];

Drawer drawer(BuildContext context) {
  return Drawer(
    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      TextButton.icon(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return MobileHome();
            }));
          },
          icon: Icon(Icons.home),
          label: Text('Home')),
      TextButton.icon(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return MobilePersonal();
            }));
          },
          icon: Icon(Icons.person),
          label: Text('Personal')),
      TextButton.icon(
          onPressed: () async {
            String url = 'https://firebasestorage.googleapis.com/v0/b/amal-portfolio-b1383.appspot.com/o/downloads%2FCV_AMAL_M_LATEST.pdf?alt=media&token=d1c7afc5-0be0-4ce4-b3d0-e88e2dd8a1b7';
            launchUrl1(Uri.parse(url));
          },
          icon: Icon(Icons.file_download),
          label: Text('Resume')),
      TextButton.icon(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return MobileProfessional();
            }));
          },
          icon: Icon(Icons.work),
          label: Text('Professional')),
      TextButton.icon(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return ContactMobile();
            }));
          },
          icon: Icon(Icons.contact_page),
          label: Text('Contact')),
    ]),
  );
}

List<IconButton> getsocialicons() {
  return [
    IconButton(
      icon: Icon(
        FontAwesomeIcons.facebook,
        color: Colors.blue,
      ),
      onPressed: () {
        launchUrl1(Uri.parse('https://www.facebook.com/AmalBeCool/'));
      },
    ),
    IconButton(
        icon: Icon(
          FontAwesomeIcons.whatsapp,
          color: Colors.green,
        ),
        onPressed: () {
          launchUrl1(Uri.parse("tel:+91-9497873783"));
        }),
    IconButton(
        onPressed: () {
          launchUrl1(Uri.parse("https://github.com/amalsatheesh1729"));
        },
        icon: Icon(
          FontAwesomeIcons.github,
          color: Colors.black,
        )),
    IconButton(
      icon: Icon(FontAwesomeIcons.linkedin, color: Colors.blue),
      onPressed: () {
        launchUrl1(Uri.parse(('https://www.linkedin.com/in/amal-m-481a7716a/')));
      },
    ),
    IconButton(
      icon: Icon(FontAwesomeIcons.instagram, color: Colors.purple),
      onPressed: () {
        launchUrl1(Uri.parse(('https://www.instagram.com/amal_satheesh_96/')));
      },
    )
  ];
}

AppBar getAppBar(BuildContext context) {
  return AppBar(
    actions: [
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
            return WebHome();
          }));
        },
        child: Text(
          'Home',
          style: GoogleFonts.concertOne(fontSize: 20),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                Theme.of(context).appBarTheme.backgroundColor)),
      ),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
              return Personal();
            }));
          },
          child: Text(
            'Personal',
            style: GoogleFonts.concertOne(fontSize: 20),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  Theme.of(context).appBarTheme.backgroundColor))),
      ElevatedButton(
          onPressed: () async {
            String url = 'https://firebasestorage.googleapis.com/v0/b/amal-portfolio-b1383.appspot.com/o/downloads%2FCV_AMAL_M_LATEST.pdf?alt=media&token=d1c7afc5-0be0-4ce4-b3d0-e88e2dd8a1b7';
            launchUrl1(Uri.parse(url));
          },
          child: Text(
            'Resume',
            style: GoogleFonts.concertOne(fontSize: 20),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  Theme.of(context).appBarTheme.backgroundColor))),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
              return Professional();
            }));
          },
          child: Text(
            'Professional',
            style: GoogleFonts.concertOne(fontSize: 20),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  Theme.of(context).appBarTheme.backgroundColor))),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
              return Contact();
            }));
          },
          child: Text(
            'Contact',
            style: GoogleFonts.concertOne(fontSize: 20),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  Theme.of(context).appBarTheme.backgroundColor))),
    ],
  );
}

void popup(BuildContext context,String heading,String content,Color c)
{
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(heading,style: TextStyle(color: c),),
          content: Text(content,style: TextStyle(color: c),),
          actions: [
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      });
}
