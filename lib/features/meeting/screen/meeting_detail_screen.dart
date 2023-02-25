import 'package:flutter/material.dart';
import 'package:motionhack/core/constant/router.dart';
import 'package:motionhack/core/resources/gradient.dart';
import 'package:motionhack/features/meeting/entities/meeting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/core/resources/colors.dart';
import 'package:motionhack/core/widgets/custom_button.dart';
import 'package:motionhack/core/widgets/custom_text_input.dart';
import 'package:motionhack/features/auth/cubit/auth_cubit.dart';
import 'package:unicons/unicons.dart';

class MeetingDetailScreen extends StatelessWidget {
  const MeetingDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var meeting = ModalRoute.of(context)?.settings.arguments as Meeting;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Detail Jadwal",
          style: GoogleFonts.inter().copyWith(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: BaseColors.backgroundColor,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(21),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Pembayaran Selesai",
                              style: GoogleFonts.inter().copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          gradient:
                                              BaseGradient.primaryGradient,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          UniconsLine.check,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Container(
                                        width: double.infinity,
                                        child: Text(
                                          "Pembayaran selesai",
                                          style: GoogleFonts.inter().copyWith(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: BaseColors.primaryColor,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    height: 37,
                                    child: Divider(
                                      thickness: 1.5,
                                      color: BaseColors.primaryColor,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          gradient:
                                              BaseGradient.primaryGradient,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          UniconsLine.check,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Container(
                                        width: double.infinity,
                                        child: Text(
                                          "Menentukan waktu sesi",
                                          style: GoogleFonts.inter().copyWith(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: BaseColors.primaryColor,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    height: 37,
                                    child: Divider(
                                      thickness: 1.5,
                                      color: BaseColors.primaryColor,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          color: BaseColors.secondaryColor,
                                          border: Border.all(
                                            color: BaseColors.primaryColor,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "3",
                                            style: GoogleFonts.inter().copyWith(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: BaseColors.primaryColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Container(
                                        width: double.infinity,
                                        child: Text(
                                          "Sesi dimulai",
                                          style: GoogleFonts.inter().copyWith(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: BaseColors.primaryColor,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    height: 37,
                                    child: Divider(
                                      thickness: 1.5,
                                      color: BaseColors.primaryColor,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          color: BaseColors.secondaryColor,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "4",
                                            style: GoogleFonts.inter().copyWith(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: BaseColors.primaryColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Container(
                                        width: double.infinity,
                                        child: Text(
                                          "Sesi telah selesai",
                                          style: GoogleFonts.inter().copyWith(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: BaseColors.primaryColor,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(21),
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/creator.png'),
                                ),
                                SizedBox(width: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Dr. Twelvest",
                                      style: GoogleFonts.inter().copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "Dokter, Konten Kreator",
                                      style: GoogleFonts.inter().copyWith(
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Icon(
                                  UniconsLine.play_circle,
                                  size: 20,
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    "Psychology Talk: UU PLP (Pendidikan dan Layanan Psikologi) - Part 2",
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                  UniconsLine.clock,
                                  color: BaseColors.primaryColor,
                                  size: 20,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  meeting.startAt.toString(),
                                  style: GoogleFonts.inter().copyWith(
                                    fontSize: 10,
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
                                  size: 20,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "${meeting.slots.toString()} Peserta",
                                  style: GoogleFonts.inter().copyWith(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Divider(),
                            Container(
                              width: double.infinity,
                              child: Text(
                                "Peserta",
                                style: GoogleFonts.inter().copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/creator.png'),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  "Dr. Twelvest",
                                  style: GoogleFonts.inter().copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/creator.png'),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  "Dr. Twelvest",
                                  style: GoogleFonts.inter().copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/creator.png'),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  "Dr. Twelvest",
                                  style: GoogleFonts.inter().copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 130),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 1),
                          blurRadius: 12,
                          color: Colors.black.withOpacity(.09)),
                    ],
                  ),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Container(
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/svg/ic_coin.svg'),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  "Pembayaran Berhasil",
                                  style: GoogleFonts.inter().copyWith(
                                    fontSize: 16,
                                    color: Colors.grey.shade500,
                                  ),
                                  overflow: TextOverflow.clip,
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(ROUTER.MEETING_LINE);
                            return;
                            showModalBottomSheet(
                              context: context,
                              builder: (context) => Container(
                                height: 200,
                                color: Colors.white,
                              ),
                            );
                          },
                          child: Container(
                            height: 40,
                            padding: EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: BaseGradient.primaryGradient,
                            ),
                            child: Center(
                              child: Text(
                                "Mulai Sekarang",
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
