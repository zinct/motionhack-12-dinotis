import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/core/resources/colors.dart';
import 'package:motionhack/core/widgets/custom_button.dart';
import 'package:motionhack/core/widgets/custom_text_input.dart';
import 'package:unicons/unicons.dart';

class ProfilePasswordScreen extends StatelessWidget {
  const ProfilePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Ganti Kata Sandi",
          style: GoogleFonts.inter().copyWith(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          Icon(
            UniconsLine.comment,
            color: BaseColors.primaryColor,
            size: 36,
          ),
          SizedBox(width: 15),
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kata sandi lama",
                            style: GoogleFonts.inter().copyWith(
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomTextInput(
                            hintText: "Masukan kata sandi lama",
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Kata sandi baru",
                            style: GoogleFonts.inter().copyWith(
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomTextInput(
                            hintText: "Masukan kata sandi baru",
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Ulangi kata sandi baru",
                            style: GoogleFonts.inter().copyWith(
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomTextInput(
                            hintText: "Ulangi kata sandi baru",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: CustomButton(
                  child: Center(
                    child: Text(
                      "Ubah Sekarang",
                      style: GoogleFonts.inter().copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
