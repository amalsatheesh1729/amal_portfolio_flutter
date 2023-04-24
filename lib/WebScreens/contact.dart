import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';

import '../DRY.dart';
import '../Firebase/firebase.dart';

class Contact extends StatelessWidget {
  Contact({Key? key}) : super(key: key);

  final TextEditingController namec = TextEditingController();
  final TextEditingController continfo = TextEditingController();
  final TextEditingController messagec = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context),
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://cdn.dribbble.com/users/211312/screenshots/5571571/artboard_1-100.jpg'),
                  fit: BoxFit.cover)),
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                     margin: EdgeInsets.only(top: 10),
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ButttonWithIcon(
                            icon: Icons.email_rounded,
                            title: "  amalthewinner123@gmail.com",
                            onPressed: () {
                              launchUrl1(Uri.parse(("mailto:amalthewinner123@gmail.com")));
                            },
                          ),
                          ButttonWithIcon(
                            icon: Icons.alternate_email_rounded,
                            title: "  amalsatheesh1996@gmail.com",
                            onPressed: () {
                              launchUrl1(Uri.parse(("mailto:amalsatheesh1996@outlook.com")));
                            },
                          ),
                          ButttonWithIcon(
                            icon: FontAwesomeIcons.whatsapp,
                            title: "  +919497873783",
                            onPressed: () {
                              launchUrl1(Uri.parse(("tel:+91-9497873783")));
                            },
                          ),
                          ButttonWithIcon(
                            icon: Icons.phone,
                            title: "  +917012850193",
                            onPressed: () {
                              launchUrl1(Uri.parse(("tel:+91-7012850193")));
                            },
                          ),
                        ],
                      )),
                  FloatingActionButton(
                    onPressed: () {},
                    shape: CircleBorder(),
                    backgroundColor: Colors.red,
                    child: Text('OR'),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextField(
                            textAlign: TextAlign.left,
                            autofocus: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                contentPadding: const EdgeInsets.only(top: 20),
                                labelText: 'Enter Name :'),
                            controller: namec,
                          ),
                          TextField(
                            textAlign: TextAlign.left,
                            autofocus: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                contentPadding: const EdgeInsets.only(top: 20),
                                labelText: 'Enter Phone or Email :'),
                            controller: continfo,
                          ),
                          TextField(
                            textAlign: TextAlign.left,
                            autofocus: true,
                            decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide.none),
                                contentPadding: EdgeInsets.only(top: 20),
                                labelText: 'Enter Your Message To Amal :'),
                            controller: messagec,
                            minLines: 1,
                            maxLines: 2,
                          ),
                          SuccessButton(
                              title: 'Send to Amal',
                              onPressed: () async {
                                if (check(context) == true) {
                                  await FireBase().sendMessageToAmal(
                                      namec.text,continfo.text,messagec.text);
                                  popup(context, "Success", "The message has been succesfully sent to Amal \n.He will contact you in 24 Hours.", Colors.green);
                                  namec.clear();
                                  continfo.clear();
                                  messagec.clear();
                                }
                              })
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }


  bool check(BuildContext context) {
    if (namec.text == '' || messagec.text == '' || continfo.text == '') {
      {
        popup(context,"Error !!!",  "The Name,Contact Info and Message \n"
            " cannot be null !!!!!!.",Colors.red);
        return false;
      }
    } else {
      return true;
    }
  }
}
