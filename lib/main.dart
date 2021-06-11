import 'package:flutter/material.dart';
import 'package:instagram_clone/component/Instabdy.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool dark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Courg',
          brightness: (dark)
              ? Brightness.dark
              : Brightness.light), // darkTheme: ThemeData(),
      home: AnimatedSplashScreen(
        duration: 2500,
        splash: Image.asset(
          "assets/images/insta_logo.png",
          height: 300,
          width: 300,
        ),

        splashTransition: SplashTransition.rotationTransition,
        // pageTransitionType: PageTransitionType.scale,
        backgroundColor: Colors.black,
        nextScreen: Scaffold(
          // backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            leading: Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Icon(Icons.camera_alt, color: Colors.black, size: 36.0),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      dark = !dark;
                    });
                  },
                  icon: Icon(
                    Icons.dark_mode_outlined,
                    size: 38.0,
                    color: Colors.black,
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 6),
                child: IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.send,
                      size: 30.0,
                      color: Colors.black,
                    )),
              )
            ],
            elevation: 0,
            title: SizedBox(
              height: 45,
              child: Container(
                child: Image.network(
                    "https://www.citypng.com/public/uploads/preview/-11590321744kgx0vygeu0.png"),
              ),
            ),
            centerTitle: true,
          ),
          body: Insta_Body(),
          bottomNavigationBar: Container(
              child: BottomAppBar(
            color: Colors.black12,
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.home, size: 30.0)),
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.search_rounded, size: 30.0)),
                  IconButton(
                      onPressed: null, icon: Icon(Icons.add_box, size: 30.0)),
                  IconButton(
                      onPressed: null, icon: Icon(Icons.favorite, size: 30.0)),
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.account_box, size: 30.0)),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}
