import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/core/resources/colors.dart';
import 'package:unicons/unicons.dart';

class MeetingLineScreen extends StatelessWidget {
  const MeetingLineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaseColors.meetingColor,
      appBar: AppBar(
        title: Text(
          "Room",
          style: GoogleFonts.inter().copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          Icon(
            UniconsLine.volume,
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Flexible(
              child: Container(
                width: MediaQuery.of(context).size.width * .7,
                child: Container(
                  height: 200,
                  color: Colors.white,
                  child: ClipRRect(
                    child: Image.asset('assets/images/creator.png'),
                  ),
                ),
              ),
              flex: 5,
            ),
            Expanded(
              child: Placeholder(
                color: Colors.white,
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
