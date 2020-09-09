import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voiceout/global/screens/constants.dart';
import 'dart:math';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class StoryDetail extends StatefulWidget {
  @override
  _StoryDetailState createState() => _StoryDetailState();
}

class _StoryDetailState extends State<StoryDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            'lib/assets/random2.jpg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            fit: BoxFit.cover,
          ),
          Text(
            "Lorem ipsum dolor sit amet lorem ipsum",
            style: GoogleFonts.arvo(
              textStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: blueLg,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              "Pellentesque ultrices feugiat pharetra. In vitae metus ut mauris lacinia semper. In fermentum ipsum ante, quis rhoncus nisi placerat ut. Morbi et est venenatis, ullamcorper lacus ut, pulvinar augue. Nunc est elit, bibendum eget egestas nec, porttitor nec enim. Quisque quis dolor ac sapien pellentesque volutpat et ut ligula.",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: contentText,
                  fontSize: 16,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
