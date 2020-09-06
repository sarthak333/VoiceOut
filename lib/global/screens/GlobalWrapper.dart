import 'package:flutter/material.dart';

class GlobalWrapper extends StatelessWidget {
  var child;
  GlobalWrapper({this.child});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: child,
      ),
    );
  }
}

//cormorant, cormorantUpright, italiana, elMessiri