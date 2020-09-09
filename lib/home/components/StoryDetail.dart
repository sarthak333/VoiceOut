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
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Hero(
              tag: "storyImage1",
              child: Image.asset(
                'lib/assets/random1.jpg',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 42,
              ),
              child: Column(
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
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor leo a lacus tristique pretium. Fusce sed diam scelerisque ex blandit sollicitudin. Pellentesque at mattis odio. Phasellus et ligula ipsum. Etiam volutpat ante vel placerat ultrices. Nam venenatis hendrerit ante sed fermentum. Cras dignissim sollicitudin pulvinar. Aliquam lectus ipsum, iaculis et luctus vitae, ullamcorper ut tellus. Integer vestibulum lobortis felis, vitae finibus neque venenatis vehicula. Praesent malesuada euismod efficitur. Maecenas sit amet sollicitudin metus, non auctor eros. Phasellus finibus ac purus vel faucibus. Fusce quis velit a lorem finibus eleifend. Duis velit neque, ornare ut lacus sed, facilisis tempor sem. Donec quis semper dolor. Ut eros turpis, rutrum quis augue egestas, dictum lacinia justo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras euismod vestibulum velit at condimentum. Maecenas blandit enim lectus, suscipit viverra orci dictum a. Fusce commodo posuere odio, et tempus enim dictum eu. Quisque dolor ex, egestas eu ultricies vel, ultricies ut purus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce nec nulla vulputate eros ultrices iaculis. Nam semper leo enim, quis ullamcorper est consectetur sit amet. Sed pellentesque est et nunc commodo malesuada. Aliquam erat volutpat. Fusce convallis urna ac dolor porttitor rutrum. Nunc imperdiet velit vitae massa suscipit, id aliquet felis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eleifend nulla quis euismod lacinia. Maecenas sed venenatis massa. Sed aliquam finibus pharetra. Sed lacinia nunc et justo mattis, a consectetur mauris consequat. Morbi mollis ante gravida, congue leo id, congue purus. Quisque euismod auctor mauris, vitae pulvinar enim elementum sit amet. Fusce sit amet pretium erat. Aliquam in mauris fermentum, tristique justo non, bibendum mauris. Maecenas lacinia ullamcorper maximus. Mauris in libero nibh. Sed ligula erat, posuere sed sodales non, tempus id tortor. Sed faucibus feugiat tellus, et volutpat mauris porttitor ac. Praesent varius libero vitae nibh ullamcorper, ut varius tellus dignissim. Sed at justo a est volutpat ultrices nec hendrerit tellus. Aenean gravida tempus ultrices. Pellentesque vitae aliquam leo, non ullamcorper orci. Praesent eu libero ex. Donec nisl purus, vehicula sit amet cursus sagittis, placerat pulvinar dolor. Fusce sollicitudin vitae mauris feugiat tempor. Aliquam erat volutpat. Mauris eu neque nibh. Morbi accumsan venenatis eleifend.",
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
            ),
          ],
        ),
      ),
    );
  }
}
