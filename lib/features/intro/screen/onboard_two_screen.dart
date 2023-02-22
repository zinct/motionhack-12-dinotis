import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/core/constant/router.dart';
import 'package:motionhack/core/resources/colors.dart';
import 'package:motionhack/core/widgets/custom_button.dart';
import 'package:unicons/unicons.dart';

class OnboardTwoScreen extends StatelessWidget {
  const OnboardTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/onboarding-2.png',
                  scale: .8,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Kapan saja dan di mana saja",
                  style: GoogleFonts.inter().copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: BaseColors.accentColor,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Denger suara doang emang puas? Kalau ngobrol di sini bisa sambil tatap-tatapan! Sebelumnya",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter().copyWith(
                    fontSize: 15,
                    color: Color(0xFFABABAB),
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 60),
                  child: CustomButton(
                    onTap: () => Navigator.of(context)
                        .pushReplacementNamed(ROUTER.ONBOARDING_TWO),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(),
                          flex: 1,
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              "Selanjutnya",
                              style: GoogleFonts.inter().copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          flex: 4,
                        ),
                        Expanded(
                          child: Icon(
                            UniconsLine.arrow_right,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
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
