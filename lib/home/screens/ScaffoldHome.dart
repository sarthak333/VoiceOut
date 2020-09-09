import 'package:flutter/material.dart';
import 'package:voiceout/global/screens/GlobalWrapper.dart';
import 'package:voiceout/home/screens/Home.dart';
import 'package:voiceout/onboarding/Onboarding.dart';
import 'package:voiceout/splash/Splash.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:voiceout/global/screens/constants.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ScaffoldHome extends StatefulWidget {
  @override
  _ScaffoldHomeState createState() => _ScaffoldHomeState();
}

class _ScaffoldHomeState extends State<ScaffoldHome> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  var screens = [
    Onboarding(),
    Home(),
    Home(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: white,
        color: blueMd,
        height: 60,
        index: 0,
        key: _bottomNavigationKey,
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
          setState(() {
            _page = index;
          });
        },
      ),
      body: SafeArea(
        child: screens[_page],
      ),
    );
  }
}
