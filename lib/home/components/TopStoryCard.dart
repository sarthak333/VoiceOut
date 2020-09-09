import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voiceout/global/screens/constants.dart';
import 'dart:math';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:voiceout/global/widgets/Animate.dart';
import 'package:voiceout/home/components/StoryDetail.dart';

class TopStoryCard extends StatefulWidget {
  @override
  _TopStoryCardState createState() => _TopStoryCardState();
}

class _TopStoryCardState extends State<TopStoryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 30),
      child: Container(
        height: MediaQuery.of(context).size.height - 350,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: blueBg,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.withOpacity(0.25),
              spreadRadius: 5,
              blurRadius: 15,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Container(
              height: MediaQuery.of(context).size.height - 350,
              width: MediaQuery.of(context).size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Material(
                color: blueBg,
                child: InkWell(
                  onTap: () {},
                  splashColor: blueMdLight,
                  child: CustomScrollView(
                    slivers: <Widget>[
                      SliverAppBar(
                        toolbarHeight: 0,
                        backgroundColor: darkBlue,
                        expandedHeight:
                            (MediaQuery.of(context).size.height - 350) / 1.5,
                        flexibleSpace: FlexibleSpaceBar(
                          background: Stack(
                            children: [
                              Image.asset(
                                'lib/assets/random2.jpg',
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                top: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  height: (MediaQuery.of(context).size.height -
                                          350) /
                                      1.5,
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  color: Colors.black.withOpacity(0.2),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SliverFixedExtentList(
                        itemExtent: MediaQuery.of(context).size.height - 330,
                        delegate: SliverChildListDelegate(
                          [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 21,
                                vertical: 32,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
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
                                        padding:
                                            const EdgeInsets.only(top: 16.0),
                                        child: Text(
                                          "Pellentesque ultrices feugiat pharetra. In vitae metus ut mauris lacinia semper. In fermentum ipsum ante, quis rhoncus nisi placerat ut. Morbi et est venenatis, ullamcorper lacus ut, pulvinar augue. Nunc est elit, bibendum eget egestas nec, porttitor nec enim. Quisque quis dolor ac sapien pellentesque volutpat et ut ligula.",
                                          style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                              color: contentText,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Center(
                                    child: Text(
                                      "Tap to continue reading",
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          color: accentColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
