import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:voiceout/global/screens/constants.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class GlobalWrapper extends StatelessWidget {
  var child;
  GlobalWrapper({
    this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: child,
      ),
    );
  }
}

//cormorant, cormorantUpright, italiana, elMessiriimport 'package:curved_navigation_bar/curved_navigation_bar.dart';
