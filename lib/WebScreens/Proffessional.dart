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
                                    'Title : Application Engineer (IC2) \n\n'
                                        'Location : Trivandrum,Kerala,India\n\n'
                                    'As a member of the Oracle Sales Cloud team, I am responsible for '+
                                  'the development of the Oracle CX Sales Application - a CRM '+
                                  'platform utilized by over 100,000 global customers, including '+
                                  'numerous Fortune 500 companies.'+
                                'I have effectively resolved over 100 bugs spanning various areas '+
                                'such as UI and Model layer code fixes, Groovy scripting, and SQL '+
                                  'performance optimization. As a member of a three-person team, I played a key role in the '+
                                'design and development of multi-threaded batch jobs utilized for '+
                                'the mass conversion of Leads to Opportunities. This feature was '+
                                'successfully delivered to our product in 2022, resulting in improved '+ 'efficiency and productivity for our customers. \n\n\n ',)
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
                                        'I worked at IQVIA as an Associate Software Developer . I was part of '
                                  'IQVIA OCE implementation team . I was involved in customizing the '
                                   'OCE Sales Application for different pharma clients like Pfizer , Zambon e.t.c .'
                                            ' The OCE Sales application was built on top of Salesforce .So my '
                                  'primary technology was salesforce and my daily tasks were writing '
                                'Apex triggers ,async batchclasses , developing visual force pages as '
                                'per client requirements.')
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
