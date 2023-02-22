import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/core/constant/router.dart';
import 'package:motionhack/core/resources/colors.dart';
import 'package:motionhack/core/widgets/custom_button.dart';
import 'package:motionhack/core/widgets/custom_text_input.dart';
import 'package:unicons/unicons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Ubah Profil",
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
      backgroundColor: BaseColors.backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Masuk Akun",
                    style: GoogleFonts.inter().copyWith(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Silahkan masukan nomor handphone & kata sandi akun anda yang telah terdaftar untuk masuk ke aplikasi",
                    style: GoogleFonts.inter().copyWith(
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40),
                  CustomTextInput(
                    hintText: "Masukan nomor handphone",
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(20),
                      child: SvgPicture.asset('assets/svg/indonesia.svg'),
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomTextInput(
                    hintText: "Masukan kata sandi",
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Lupa kata sandi?",
                    style: GoogleFonts.inter().copyWith(
                      fontSize: 15,
                      color: BaseColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
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
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushReplacementNamed(ROUTER.HOME);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
