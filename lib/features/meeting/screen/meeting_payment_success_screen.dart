import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/core/resources/colors.dart';
import 'package:motionhack/core/widgets/custom_button.dart';

class MeetingPaymentSuccessScreen extends StatelessWidget {
  const MeetingPaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Terimakasih telah membeli!",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: BaseColors.primaryColor,
                        ),
                      ),
                      Text(
                        "Proses anda telah selesai",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                flex: 5,
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: CustomButton(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    child: Center(
                      child: Text(
                        "Kembali",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
      )),
    );
  }
}
