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

void launchUrl(String _url) async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}

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
            String url = await FirebaseStorage.instance
                .ref('downloads')
                .child('CV_Amal_M.pdf')
                .getDownloadURL();
            if (!await launch(url)) throw 'Could not launch URL';
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
        launchUrl('https://www.facebook.com/AmalBeCool/');
      },
    ),
    IconButton(
        icon: Icon(
          Icons.whatsapp,
          color: Colors.green,
        ),
        onPressed: () {
          launchUrl("tel:+91-9497873783");
        }),
    IconButton(
        onPressed: () {
          launchUrl("https://github.com/amalsatheesh1729");
        },
        icon: Icon(
          FontAwesomeIcons.github,
          color: Colors.black,
        )),
    IconButton(
      icon: Icon(FontAwesomeIcons.linkedin, color: Colors.blue),
      onPressed: () {
        launchUrl('https://www.linkedin.com/in/amal-m-481a7716a/');
      },
    ),
    IconButton(
      icon: Icon(FontAwesomeIcons.instagram, color: Colors.purple),
      onPressed: () {
        launchUrl('https://www.instagram.com/amal_satheesh_96/');
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
            String url = await FirebaseStorage.instance
                .ref('downloads')
                .child('CV_Amal_M.pdf')
                .getDownloadURL();
            if (!await launch(url)) throw 'Could not launch URL';
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
