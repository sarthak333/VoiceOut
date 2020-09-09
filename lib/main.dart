import 'package:flutter/material.dart';
import 'package:voiceout/global/screens/GlobalWrapper.dart';
import 'package:voiceout/home/screens/Home.dart';
import 'package:voiceout/onboarding/Onboarding.dart';
import 'package:voiceout/splash/Splash.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:voiceout/global/screens/constants.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: white,
          color: blueMd,
          height: 60,
          index: 1,
          items: <Widget>[
            Icon(
              AntDesign.solution1,
              size: 24,
              color: white,
            ),
            Icon(
              AntDesign.home,
              size: 24,
              color: white,
            ),
            Icon(
              AntDesign.setting,
              size: 24,
              color: white,
            ),
          ],
          onTap: (index) {
            //Handle button tap
          },
        ),
        body: SafeArea(
          child: Home(),
        ),
      ),
      routes: {
        '/Splash': (context) => GlobalWrapper(
              child: Splash(),
              displayBottomBar: false,
            ),
        '/Onboarding': (context) => GlobalWrapper(
              child: Onboarding(),
              displayBottomBar: false,
            ),
        '/Home': (context) => GlobalWrapper(
              child: Home(),
              displayBottomBar: true,
            ),
      },
    );
  }
}
