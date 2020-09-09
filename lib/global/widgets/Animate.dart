import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voiceout/global/screens/constants.dart';
import 'dart:math';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:animations/animations.dart';

class Animate extends StatelessWidget {
  final Widget destinationWidget;
  final Widget triggerWidget;

  Animate({
    this.destinationWidget,
    this.triggerWidget,
  });

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionType: ContainerTransitionType.fade,
      // openElevation: 1,
      
      transitionDuration: Duration(milliseconds: 500),
      openBuilder: (BuildContext context, VoidCallback _) {
        return destinationWidget;
      },
      // closedElevation: 0,
      closedBuilder: (BuildContext _, VoidCallback openContainer) {
        return triggerWidget;
      },
    );
  }
}
