import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/core/resources/colors.dart';

class ForumDetailScreen extends StatelessWidget {
  const ForumDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaseColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Forum Kesehatan",
                style: GoogleFonts.inter().copyWith(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Adakah dari kalian yang mengalami susah tidur? mungkin bisa kita bahas disini ",
                style: GoogleFonts.inter().copyWith(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "23 Februari 2023",
                    style: GoogleFonts.inter().copyWith(
                      fontSize: 14,
                      color: Color(0xFFA3A3A3),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "98 Like",
                    style: GoogleFonts.inter().copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFA3A3A3),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 13),
              Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundImage:
                        AssetImage('assets/images/people-forum.png'),
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Oleh Dr. Twelvest ST.S",
                    style: GoogleFonts.inter().copyWith(
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  children: [
                    ForumChatMessage(),
                    SizedBox(height: 20),
                    ForumChatMessage(),
                    SizedBox(height: 20),
                    ForumChatMessage(),
                    SizedBox(height: 20),
                    ForumChatMessage(),
                    SizedBox(height: 20),
                    ForumChatMessage(),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

class ForumChatMessage extends StatelessWidget {
  const ForumChatMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage('assets/images/people-forum.png'),
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nata",
                style: GoogleFonts.inter().copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Mau nanya, saya susah tidur dan sering berhalusinasi ketika mencoba untuk tidur mungkin apakah ada solusi untuk saya mengatasi susah tidur saya?",
                style: GoogleFonts.inter().copyWith(
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    "34m",
                    style: GoogleFonts.inter().copyWith(
                      fontSize: 14,
                      color: Color(0xFFA3A3A3),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "1 Like",
                    style: GoogleFonts.inter().copyWith(
                      fontSize: 14,
                      color: Color(0xFFA3A3A3),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Reply",
                    style: GoogleFonts.inter().copyWith(
                      fontSize: 14,
                      color: Color(0xFFA3A3A3),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(width: 20),
        Icon(
          Icons.favorite_border,
          color: BaseColors.primaryColor,
        ),
      ],
    );
  }
}
