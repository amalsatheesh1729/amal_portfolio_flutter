import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';


import '../DRY.dart';
import '../Firebase/firebase.dart';


class ContactMobile extends StatelessWidget {
  ContactMobile({Key? key}) : super(key: key);


  final TextEditingController namec = TextEditingController();
  final TextEditingController continfo = TextEditingController();
  final TextEditingController messagec = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: drawer(context),
      appBar: AppBar(),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://cdn.dribbble.com/users/211312/screenshots/5571571/artboard_1-100.jpg'),
                  fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      margin: EdgeInsets.only(left:10,right: 10,top: 10),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      padding: EdgeInsets.all(15),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
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
                                  namec.clear();
                                  messagec.clear();
                                }
                              })
                        ],
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    shape: CircleBorder(),
                    backgroundColor: Colors.red,
                    child: Text('OR'),
                  ),
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      padding: EdgeInsets.all(30),
                      margin: EdgeInsets.only(left:10,right: 10,bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ButttonWithIcon(
                            icon: Icons.email_rounded,
                            title: "  amalthewinner123@gmail.com",
                            onPressed: () {
                              launchUrl1(Uri.parse("mailto:amalthewinner123@gmail.com"));
                            },
                          ),
                          Divider(thickness: 0.5),
                          ButttonWithIcon(
                            icon: Icons.alternate_email_rounded,
                            title: "  amalsatheesh1996@outlook.com",
                            onPressed: () {
                              launchUrl1(Uri.parse("mailto:amalsatheesh1996@outlook.com"));
                            },
                          ),
                          Divider(thickness: 1),
                          ButttonWithIcon(
                            icon: FontAwesomeIcons.whatsapp,
                            title: "  +919497873783",
                            onPressed: () {
                              launchUrl1(Uri.parse("tel:+91-9497873783"));
                            },
                          ),
                          Divider(thickness: 1),
                          ButttonWithIcon(
                              icon: Icons.phone,
                              title: "  +917012850193",
                              onPressed: () {
                                launchUrl1(Uri.parse("tel:+91-7012850193"));
                              }
                          ),
                        ],
                      )),
                ],
              ),
            ),
    );
  }

  bool check(BuildContext context) {
    if (namec.text == '' || messagec.text == '' || continfo.text == '')
      {
        popup(context,"Error !!!",  "The Name,Contact Info and Message \n"
            " cannot be null !!!!!!.",Colors.red);
        return false;
      } else {
      return true;
    }
  }



}