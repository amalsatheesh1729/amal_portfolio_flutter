import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'MobileScreens/Mobile_Home.dart';
import 'WebScreens/Web_Home.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyDYic4texqZzCFwMrEHcj0ZJ-ltE6l7fVw",
    appId: "1:994926651957:web:9af969d686b69b47359f7c",
    messagingSenderId: "994926651957",
    projectId: "amal-portfolio-b1383",
        storageBucket: "amal-portfolio-b1383.appspot.com",
  ));
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.green,
            )),
        home: Amal());
  }
}

class Amal extends StatefulWidget {
     Amal({Key? key}) : super(key: key);

  @override
  State<Amal> createState() => _AmalState();
}

class _AmalState extends State<Amal> with SingleTickerProviderStateMixin{


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints)
    {
      if(constraints.maxWidth<600)
        return MobileHome();
      else
        return WebHome();
    });


  }
}
