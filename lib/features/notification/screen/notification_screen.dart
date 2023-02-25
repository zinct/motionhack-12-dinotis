import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/core/resources/colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Notifikasi",
            style: GoogleFonts.inter().copyWith(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorColor: BaseColors.primaryColor,
            tabs: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text("Umum"),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  "Jadwal",
                ),
              ),
            ],
          ),
        ),
        backgroundColor: BaseColors.backgroundColor,
        body: TabBarView(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Image.asset(
                    'assets/images/notification-empty.png',
                    height: 237,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Belum ada notifikasi transaksi",
                    style: GoogleFonts.inter().copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: BaseColors.primaryColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Saat ini kamu belum mendapatkan notifikasi",
                    style: GoogleFonts.inter().copyWith(
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Image.asset(
                    'assets/images/meeting-empty.png',
                    height: 237,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Belum ada jadwal video call",
                    style: GoogleFonts.inter().copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: BaseColors.primaryColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Cari kreator pilihanmu dan booking jadwal untuk memulai video call, yuk!",
                    style: GoogleFonts.inter().copyWith(
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
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
