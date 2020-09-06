import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voiceout/global/screens/constants.dart';
import 'package:voiceout/home/components/TopStoryCard.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 32,
              left: 32,
              right: 32,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Buzzing stories",
                  style: GoogleFonts.montserrat(
                    fontSize: 26,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: blueMd,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Text(
                        "Category1",
                        style: GoogleFonts.alegreyaSansSc(
                          textStyle: TextStyle(
                            fontSize: 14,
                            // fontWeight: FontWeight.bold,
                            color: blueMd,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Text(
                        "Category2",
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            fontSize: 12,
                            // fontWeight: FontWeight.bold,
                            color: greyDark,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Text(
                        "Category3",
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            fontSize: 12,
                            // fontWeight: FontWeight.bold,
                            color: greyDark,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 300,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 20,
                    ),
                    TopStoryCard(),
                    TopStoryCard(),
                    TopStoryCard(),
                    Container(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: blueMd,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
