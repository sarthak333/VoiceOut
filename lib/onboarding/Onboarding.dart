import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voiceout/global/screens/constants.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    var listPagesViewModel = [
      PageViewModel(
        title: "",
        bodyWidget: Container(
          height: MediaQuery.of(context).size.height - 200,
          // color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SvgPicture.asset(
                'lib/assets/tired.svg',
                semanticsLabel: 'Acme Logo',
                height: 200,
                width: 200,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 70,
                ),
                child: Text(
                  "Tired of watching selective news from the prominent media houses?",
                  style: GoogleFonts.quicksand(
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      PageViewModel(
        title: "",
        bodyWidget: Container(
          height: MediaQuery.of(context).size.height - 200,
          // color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SvgPicture.asset(
                'lib/assets/search.svg',
                semanticsLabel: 'Acme Logo',
                height: 200,
                width: 200,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 70,
                ),
                child: Text(
                  "Looking for authentic news?",
                  style: GoogleFonts.quicksand(
                    // color: Colors.white,
                    fontSize: 16,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      PageViewModel(
        title: "",
        bodyWidget: Container(
          height: MediaQuery.of(context).size.height - 200,
          // color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SvgPicture.asset(
                'lib/assets/voiceout.svg',
                semanticsLabel: 'Acme Logo',
                height: 200,
                width: 200,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 70,
                ),
                child: Text(
                  "VoiceOut takes care of all these issues!",
                  style: GoogleFonts.quicksand(
                    // color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
      PageViewModel(
        title: "",
        bodyWidget: Container(
          height: MediaQuery.of(context).size.height - 200,
          // color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SvgPicture.asset(
                'lib/assets/join.svg',
                semanticsLabel: 'Acme Logo',
                height: 200,
                width: 200,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 70,
                ),
                child: Text(
                  "Join us now to experience the revolution!",
                  style: GoogleFonts.quicksand(
                    // color: Colors.white,
                    fontSize: 16,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ];

    return IntroductionScreen(
      pages: listPagesViewModel,
      onDone: () {
        Navigator.pushNamed(context, "/Home");
      },
      globalBackgroundColor: Colors.white,
      done: Text(
        "Start!",
        style: GoogleFonts.quicksand(
          color: blueMd,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      dotsDecorator: DotsDecorator(
          size: const Size.square(5.0),
          activeSize: const Size(20.0, 5.0),
          activeColor: black,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0))),
    );
  }
}
