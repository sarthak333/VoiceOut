import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voiceout/global/screens/constants.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class TopStoryCard extends StatefulWidget {
  @override
  _TopStoryCardState createState() => _TopStoryCardState();
}

class _TopStoryCardState extends State<TopStoryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
      child: Container(
        height: MediaQuery.of(context).size.height - 350,
        width: 290,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: blueMd.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: MediaQuery.of(context).size.height - 350,
            width: 290,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  toolbarHeight: 0,
                  backgroundColor: darkBlue,
                  expandedHeight:
                      (MediaQuery.of(context).size.height - 350) / 1.5,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      'lib/assets/random1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SliverFixedExtentList(
                  itemExtent: MediaQuery.of(context).size.height - 350,
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 20,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Lorem ipsum dolor sit amet lorem ipsum",
                              style: GoogleFonts.arvo(
                                textStyle: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: blueLg,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                "Pellentesque ultrices feugiat pharetra. In vitae metus ut mauris lacinia semper. In fermentum ipsum ante, quis rhoncus nisi placerat ut. Morbi et est venenatis, ullamcorper lacus ut, pulvinar augue. Nunc est elit, bibendum eget egestas nec, porttitor nec enim. Quisque quis dolor ac sapien pellentesque volutpat et ut ligula.",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      // fontSize: 18,
                                      color: contentText
                                      // fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            )
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
    );
  }
}
