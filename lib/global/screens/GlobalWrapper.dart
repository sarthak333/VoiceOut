import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:voiceout/global/screens/constants.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class GlobalWrapper extends StatelessWidget {
  var child;
  bool displayBottomBar;
  GlobalWrapper({
    this.child,
    this.displayBottomBar = false,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: displayBottomBar
          ? CurvedNavigationBar(
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
            )
          : null,
      body: SafeArea(
        child: child,
      ),
    );
  }
}

//cormorant, cormorantUpright, italiana, elMessiriimport 'package:curved_navigation_bar/curved_navigation_bar.dart';
