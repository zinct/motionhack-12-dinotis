import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/core/resources/colors.dart';
import 'package:unicons/unicons.dart';

class ProfileCoinScreen extends StatelessWidget {
  const ProfileCoinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Riwayat Coin",
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
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorColor: BaseColors.primaryColor,
            tabs: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text("Semua"),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  "Koin Masuk",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text("Koin Keluar"),
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
                    height: 150,
                  ),
                  Image.asset('assets/images/group.png'),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Kamu belum menambahkan kreator pilihan",
                    style: GoogleFonts.inter().copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
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
