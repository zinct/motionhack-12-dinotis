import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/core/resources/gradient.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: BaseGradient.primaryGradient,
        borderRadius: BorderRadius.circular(8),
      ),
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
    );
  }
}
