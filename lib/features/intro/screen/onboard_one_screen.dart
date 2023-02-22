import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/core/constant/router.dart';
import 'package:motionhack/core/resources/colors.dart';
import 'package:motionhack/core/resources/gradient.dart';
import 'package:motionhack/core/widgets/custom_button.dart';
import 'package:unicons/unicons.dart';

class OnboardOneScreen extends StatelessWidget {
  const OnboardOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55),
          child: Center(
            child: Column(
              children: [
                Expanded(child: Container()),
                Expanded(
                  child: Image.asset(
                    'assets/images/group.png',
                    scale: .8,
                  ),
                  flex: 2,
                ),
                SizedBox(height: 20),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Ngobrol bareng Kreator Hebat!",
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
                        "Ketemuan dengan kreator hebat dari berbagai bidang? hanya disini tempatnya",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 15,
                          color: Color(0xFFABABAB),
                        ),
                      ),
                    ],
                  ),
                  flex: 1,
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Flexible(
                            child: Container(
                              height: 12,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(666),
                                gradient: BaseGradient.primaryGradient,
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Flexible(
                            child: Container(
                              height: 10,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(666),
                                color: Color(0xFFE6DFF1),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
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
                  flex: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
