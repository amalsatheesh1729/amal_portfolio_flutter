import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../DRY.dart';

class Professional extends StatelessWidget {
  const Professional({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: getAppBar(context),
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage('https://images.unsplash.com/photo-1487088678257-3a541e6e3922?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074'))
      ),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width / 2,
          child: ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Proffessional Experience ',
                    style: GoogleFonts.calligraffitti(
                      color: Colors.red,
                      fontSize: 40,
                      fontWeight: FontWeight.w800
                  ),),
                  Container(
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      padding: EdgeInsets.all(20),
                      child: RichText(
                          softWrap: true,
                          textAlign: TextAlign.justify,
                          text: TextSpan(children: [
                            TextSpan(
                              children: [
                                TextSpan(
                                    style: GoogleFonts.abel(color: Colors.purple),
                                    text: 'ORACLE   (2021 - Present)\n\n\n'),
                                TextSpan(
                                    text:
                                        'Title : Applications Engineer (IC2)\n\n'
                                        'Location : Trivandrum,Kerala,India\n\n'
                                        'Technologies : Oracle ADF,Java,Groovy,J-Dev,Oracle SQL,Helium\n\n'
                                        'Description : I work as an Applications Engineer at Oracle.I am part of'
                                        'Oracle sales cloud . My daily work involves maintaining and developing features '
                                        'on Oracle CX Sales application.\n\n\n\n  ')
                              ],
                            ),
                            TextSpan(
                              children: [
                                TextSpan(
                                    style: GoogleFonts.abel(color: Colors.purple),
                                    text: 'IQVIA   (2019 - 2021)\n\n\n'),
                                TextSpan(
                                    text:
                                        'Title : Associate Software Developer\n\n'
                                        'Location : Kochi,Kerala,India\n\n'
                                        'Technologies : Salesforce,Salesforce Apex,VisualForce,SLDS,Git,GitLab,DTK,ANT\n\n'
                                        'Certifications : Salesforce Certified Platform Developer 1\n\n'
                                        'Description : I was working at IQVIA as an Associate Software Developer.I was part of '
                                        'OCE implementation team . My daily work involveed customizing the OCE Sales application as '
                                        'per the requirements of pharma clients like Zambon,Pfizer e.t.c')
                              ],
                            )
                          ])))
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
