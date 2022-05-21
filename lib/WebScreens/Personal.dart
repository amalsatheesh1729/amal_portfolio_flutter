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
                                    launchUrl(url);
                                  }),
                            TextSpan(
                                text: 'HackerRank Profile \n\n',
                                style: TextStyle(color: Colors.blue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    final url =
                                        ' https://www.hackerrank.com/amalsatheesh1729';
                                    launchUrl(url);
                                  })
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Projects\n',
                          style: GoogleFonts.calligraffitti(
                              color: Colors.red,
                              fontSize: 40,
                              fontWeight: FontWeight.w300)),
                      ExpansionPanelList(
                          children: [
                            eachlist(
                                context,
                                'Portfolio – Amal (2022 May)',
                                'This portfolio of mine was made recently using flutter as frontend '
                                    'and firebase as backend.  The firebase backend was needed for storing the '
                                    'contact messages and the resume. The portfolio is hosted using firebase hosting service itself.\n\n '
                                    'Stack : Flutter,Dart,Firebase \n\n',
                                'PortFolio-Amal',
                                '',
                                0),
                            eachlist(
                                context,
                                'A Simple One To One chat Application Using Geolocator (2022 March)',
                                'My aim was to create a simple one to one chat application based on the location of users.'
                                    'A flutter package called Geolocator was used to get location of the users. '
                                    'A chat application with google authentication, text messaging, camera and video controllers,'
                                    ' image & audio sharing were developed with flutter & firebase.\n\n '
                                    'Stack : Flutter,Dart,Firebase \n\n',
                                'one-to-one-chat',
                                'https://github.com/amalsatheesh1729/one-to-one-chat',
                                1),
                            eachlist(
                                context,
                                'Full Stack Instagram Clone (2022 February)',
                                'This full stack clone of Instagram was made recently using flutter as frontend and firebase as backend.'
                                        'Since flutter is a cross platform application development platform,'
                                        'the app can be made available across iOS, android and web platforms.'
                                        'It supports uploading images, crud operations, commenting on posts, liking on posts,'
                                        'user authentication.\n\n ' +
                                    'Stack : Flutter,Dart,Firebase,sqflite \n\n',
                                'instagram-clone',
                                'https://github.com/amalsatheesh1729/instagram-clone',
                                2),
                            eachlist(
                                context,
                                'Comment Spam Detection (Google Code Labs)  (2022 March)',
                                'This was a learning project which I did with the help of google code labs. The basic idea was'
                                    'a csv file with texts classified as spam and not spam was fed into a predefined ML Model with'
                                    ' the help of TensorFlow library. This model is hosted with the help of TensorFlow serving '
                                    'and hence basically we can send REST or gRPC(google remote procedure calls) requests '
                                    'to this server and receive response.\n\n'
                                    'Stack : Flutter,Dart,Tensorflow Serving,REST,\ngRPC,TensorFlow Lite,googlecodelabs\n',
                                'Codelab',
                                'https://github.com/amalsatheesh1729/codelabs',
                                3),
                            eachlist(
                                context,
                                'Clima - A Weather App (2021 April) ',
                                'A very simple weather application with neat UI. It uses openweathermap API .'
                                        ' A get request is send to the openweathermap server with latitude and '
                                        'longtitude of the device obtained with the help of gelolocator flutter '
                                        'package in the URL as query paramters. The API also supports GET requests '
                                        'by passing city name as query parameter . The Json response gives the weather '
                                        'details of that particular place. \n\n ' +
                                    'Stack : Flutter,Dart,OpenWeatherMapAPI Server \n\n',
                                'Clima',
                                '',
                                4),
                            eachlist(
                                context,
                                'A Simple CRUD application & REST API Expose (MVC) (2021 March)',
                                'This was a very simple CRUD application following MVC architecture'
                                    'Here DAO and    POJO classes form the model part which deals with representing'
                                    ' book object and database operations – CRUD. The HTTP requests from client is'
                                    ' forwarded to servlet which acts as controller. The JSP pages acts as the view part.\n\n'
                                    ' Frontend: JSP\n'
                                    'API: REST\n'
                                    'Backend: Servlet, MySQL, Apache Tomcat Webserver\n',
                                'CRUD',
                                '',
                                5),
                            eachlist(
                                context,
                                'YelpCamp (2020 January)',
                                'This is similar to above one. The few'
                                    ' differences were instead of books it was camps,'
                                    'also, there was one more model called user and there existed an association between'
                                    ' user and camps i.e one to many. Similar to user to posts in the Instagram clone app.\n'
                                    ' Frontend: HTML,CSS,JavaScript,BootStrap,\nJQuery,SemanticUI\n'
                                    'API: REST\n'
                                    'Backend: Node Js, Express, MongoDB, Passport \n',
                                'YelpCamp',
                                '',
                                6),
                            eachlist(
                                context,
                                'Intrusion Detection System (2018)',
                                ' B-Tech Main Project ',
                                'Intrusion Detection System',
                                '',
                                7),
                            eachlist(
                                context,
                                'Attendance Management System Using Facial Recognition –  B-Tech Mini Project 2017',
                                'The concept attendance system which could automatically mark attendance from images of students.'
                                    'This project uses Python, OpenCV and SQLite3 as database.'
                                    'An image of a class could be given as input and system detects individual in the image.'
                                    'Database is updated to mark attendance to students present.'
                                    'Attendance Reports could be generated for more insights.'
                                    'We trained the model using few of our friends and they were later recognized.\n',
                                'Attendance Management',
                                'https://github.com/amalsatheesh1729/Face_Recognition_Attendance_System_Python-OpenCV',
                                8)
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
                        launchUrl(url);
                      })
              ])),
        ),
        isExpanded: _isopen[index]);
  }
}
