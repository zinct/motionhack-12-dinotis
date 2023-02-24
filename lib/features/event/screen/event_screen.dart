import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/core/resources/colors.dart';
import 'package:motionhack/core/resources/gradient.dart';
import 'package:motionhack/core/widgets/custom_text_input.dart';
import 'package:unicons/unicons.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Dinotis Event",
                  style: GoogleFonts.inter().copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  UniconsLine.plus_circle,
                  color: BaseColors.primaryColor,
                  size: 28,
                ),
              ],
            ),
            SizedBox(height: 40),
            CustomTextInput(
              hintText: "Cari kreator pilihanmu disini...",
              prefixIcon: Icon(
                UniconsLine.search,
                color: BaseColors.primaryColor,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          child: Image.asset(
                              'assets/images/profession/kesehatan.png'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Hiburan",
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          child: Image.asset(
                              'assets/images/profession/kesehatan.png'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Hiburan",
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          child: Image.asset(
                              'assets/images/profession/kesehatan.png'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Hiburan",
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          child: Image.asset(
                              'assets/images/profession/kesehatan.png'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Hiburan",
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              child: Text(
                "Yang lagi populer",
                style: GoogleFonts.inter().copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 168,
                    height: 190,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 150,
                          child: Image.asset(
                            'assets/images/creator.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 40,
                          decoration: BoxDecoration(
                            gradient: BaseGradient.primaryGradient,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                          ),
                          child: Text(
                            "Indra Mahesa",
                            style: GoogleFonts.inter().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 168,
                    height: 193,
                    child: Placeholder(),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 168,
                    height: 193,
                    child: Placeholder(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
