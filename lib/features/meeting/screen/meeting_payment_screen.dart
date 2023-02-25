import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/core/constant/router.dart';
import 'package:motionhack/core/resources/colors.dart';
import 'package:motionhack/core/widgets/custom_button.dart';
import 'package:unicons/unicons.dart';

class MeetingPaymentScreen extends StatelessWidget {
  const MeetingPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaseColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Pilih metode pembayaran",
          style: GoogleFonts.inter().copyWith(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Column(
                  children: [
                    Text(
                      "Indra Mahesa",
                      style: GoogleFonts.inter().copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Psychology Talk: UU PLP (Pendidikan dan Layanan Psikologi) - Part 2",
                      style: GoogleFonts.inter().copyWith(
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Psychology Talk: UU PLP (Pendidikan dan Layanan Psikologi) - Part 2",
                      style: GoogleFonts.inter().copyWith(
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Icon(
                          UniconsLine.clock,
                          color: BaseColors.primaryColor,
                          size: 25,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "19:00 - 20:00",
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          UniconsLine.users_alt,
                          color: BaseColors.primaryColor,
                          size: 25,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "200 Peserta",
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Pembayaran",
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "E-Wallet",
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: BaseColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal",
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "Rp 0",
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Biaya Tambahan Aplikasi",
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "Rp 0",
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Biaya Admin",
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "Rp 0",
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Point",
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "Rp 0",
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Biaya",
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "Rp 5.900",
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      onTap: () => Navigator.of(context).pop(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        border: Border.all(
                          color: BaseColors.primaryColor,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Batal",
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: BaseColors.primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: CustomButton(
                      onTap: () => Navigator.of(context)
                          .pushNamed(ROUTER.MEETING_PAYMENT_SUCCESS),
                      child: Center(
                        child: Text(
                          "Booking",
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
