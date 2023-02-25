import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
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
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              UniconsLine.volume,
              color: Colors.black,
              size: 28,
            ),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Flexible(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Container(
                      margin: EdgeInsets.all(40),
                      child: Image.asset('assets/images/meeting.png'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Container(
                            width: 75,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0xFFA1F6C4),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/svg/ic_live.svg',
                                    height: 14),
                                SizedBox(width: 5),
                                Text(
                                  "Live",
                                  style: GoogleFonts.inter().copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  UniconsLine.clock,
                                  color: Colors.white,
                                  size: 18,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "00:19:57",
                                  style: GoogleFonts.inter().copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          child: SizedBox(
                            height: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              flex: 6,
            ),
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: CircleAvatar(
                        maxRadius: 23,
                        backgroundColor: Color(0xFFFF5756),
                        child: SvgPicture.asset('assets/svg/ic_disconnect.svg'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: CircleAvatar(
                        maxRadius: 23,
                        backgroundColor: Color(0xFFD9D9D9),
                        child: SvgPicture.asset('assets/svg/ic_hand.svg'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: CircleAvatar(
                        maxRadius: 23,
                        backgroundColor: Color(0xFFD9D9D9),
                        child: SvgPicture.asset('assets/svg/ic_chat.svg'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: CircleAvatar(
                        maxRadius: 23,
                        backgroundColor: Color(0xFFD9D9D9),
                        child: SvgPicture.asset('assets/svg/ic_message.svg'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: CircleAvatar(
                        maxRadius: 23,
                        backgroundColor: Color(0xFFD9D9D9),
                        child: SvgPicture.asset('assets/svg/ic_people.svg'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: CircleAvatar(
                        maxRadius: 23,
                        backgroundColor: Color(0xFFD9D9D9),
                        child: SvgPicture.asset('assets/svg/ic_record.svg'),
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
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
