import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../DRY.dart';

class Personal extends StatefulWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  List<bool> _isopen = List.filled(10, false);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: getAppBar(context),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1518655048521-f130df041f66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cG9ydGZvbGlvJTIwYmFja2dyb3VuZHxlbnwwfHwwfHw%3D&w=1000&q=80'))),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context)
                      .copyWith(scrollbars: false),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      Text('\Hosted Projects',
                          style: GoogleFonts.calligraffitti(
                              color: Colors.red,
                              fontSize: 40,
                              fontWeight: FontWeight.w300)),
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 2),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 2,
                      height: 500,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                    ),
                    items: projects.map((project) {
                      return Builder(
                        builder: (BuildContext context) {
                          return InkWell(
                            onTap: () {
                             launchUrl1(Uri.parse(project['url']!));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(
                                  child: Container(
                                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                                      child: CachedNetworkImage(
                                        imageUrl: project['image']!,
                                        placeholder: (context, url) =>
                                        const CircularProgressIndicator(),
                                        errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                      )),
                                ),
                                Flexible (child:Text(project['name']! ,

                                  style: GoogleFonts.acme(color: Colors.purple),
                                ))
                              ],
                            )
                          );
                        },
                      );
                    }).toList(),
                  ),

                      Text('\nCompetitive Coding',
                          style: GoogleFonts.calligraffitti(
                              color: Colors.red,
                              fontSize: 40,
                              fontWeight: FontWeight.w300)),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text:
                                    '\nIam mainly active on two platforms Leetcode and HackerRank \n\n\n'),
                            TextSpan(
                                text: 'Leetcode Profile \n\n',
                                style: TextStyle(color: Colors.blue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    final url =
                                        'https://leetcode.com/amal1729/';
                                    launchUrl1(Uri.parse((url)));
                                  }),
                            TextSpan(
                                text: 'HackerRank Profile \n\n',
                                style: TextStyle(color: Colors.blue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    final url =
                                        'https://www.hackerrank.com/amalsatheesh1729';
                                    launchUrl1(Uri.parse((url)));
                                  })
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text('Other Projects\n',
                          style: GoogleFonts.calligraffitti(
                              color: Colors.red,
                              fontSize: 40,
                              fontWeight: FontWeight.w300)),
                      ExpansionPanelList(
                          children: [
                            eachlist(
                                context,
                                'Comment Spam Detection (Google Code Labs)  (2022 March)',
                                'Developed a spam classification model using a pre-defined machine learning model in TensorFlow, '
                                    'with guidance from Google Code Labs.'
                                    ' \nTrained the model on a CSV file containing spam and non-spam texts,'
                                    ' \nand hosted it using TensorFlow Serving to enable REST or gRPC requests and responses.\n\n'
                                    'Stack:Flutter,Dart,Tensorflow Serving,REST,gRPC,TensorFlow Lite,googlecodelabs\n',
                                'Spam Detection',
                                'https://github.com/amalsatheesh1729/codelabs',
                                0),
                            eachlist(
                                context,
                                'Attendance Management System Using Facial Recognition –  B-Tech Mini Project 2017',
                                'An attendance system which could automatically mark attendance from images of students.'
                                    'This project uses Python, OpenCV and SQLite3 as database.'
                                    'An image of a class could be given as input and system detects individual in the image.'
                                    'Database is updated to mark attendance to students present.'
                                    'Attendance Reports could be generated for more insights.'
                                    'We trained the model using few of our friends and they were later recognized.\n',
                                'Attendance Management',
                                'https://github.com/amalsatheesh1729/Face_Recognition_Attendance_System_Python-OpenCV',
                                1),
                            eachlist(
                                context,
                                'Intrusion Detection System (2018) - B-Tech Main Project',
                                '  ',
                                'Intrusion Detection System',
                                '',
                                2),

                          ],
                          expansionCallback: (i, isopen) {
                            setState(() {
                              _isopen[i] = !_isopen[i];
                            });
                          }),
                      SizedBox(height: 10),
                    ]),
                  ),
                ),
              ),
            )));
  }

  ExpansionPanel eachlist(BuildContext context, String heading,
      String description, String codeurl, String codelink, int index) {
    return ExpansionPanel(
        headerBuilder: (context, isopen) {
          return Text(heading);
        },
        body: Container(
          width: MediaQuery.of(context).size.width / 3,
          child: RichText(
              softWrap: true,
              textAlign: TextAlign.justify,
              text: TextSpan(children: [
                TextSpan(text: description),
                TextSpan(text: 'code : '),
                TextSpan(
                    text: codeurl,
                    style: TextStyle(color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        final url = codelink;
                        launchUrl1(Uri.parse((url)));
                      })
              ])),
        ),
        isExpanded: _isopen[index]);
  }
}
