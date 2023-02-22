import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/core/constant/router.dart';
import 'package:motionhack/core/resources/colors.dart';
import 'package:motionhack/core/resources/gradient.dart';
import 'package:unicons/unicons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaseColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0XFFDDDDDD),
                        ),
                        width: 57,
                        height: 57,
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Twelvest",
                            style: GoogleFonts.inter().copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "+628123456789",
                            style: GoogleFonts.inter().copyWith(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        blurRadius: 12,
                        offset: Offset(0, 4), // changes position of shadow
                      )
                    ],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  height: 81,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Koin Kamu",
                              style: GoogleFonts.inter().copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(
                                  UniconsLine.usd_circle,
                                  color: BaseColors.primaryColor,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "0",
                                  style: GoogleFonts.inter().copyWith(
                                    fontSize: 20,
                                    color: BaseColors.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        flex: 4,
                      ),
                      Expanded(
                        child: InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0XFFDDDDDD),
                              gradient: BaseGradient.primaryGradient,
                            ),
                            width: 35,
                            height: 35,
                            child: Icon(
                              UniconsLine.clock,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(ROUTER.PROFILE_COIN);
                          },
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0XFFDDDDDD),
                            gradient: BaseGradient.primaryGradient,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          width: 98,
                          height: 35,
                          child: Center(
                            child: Text(
                              "Tambah Koin",
                              style: GoogleFonts.inter().copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        flex: 2,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  "Pengaturan Akun",
                  style: GoogleFonts.inter().copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 25),
                Column(
                  children: [
                    ListTile(
                      leading: Image.asset('assets/images/profile/profile.png'),
                      title: Text(
                        "Ubah Profil",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 12,
                        ),
                      ),
                      trailing: Icon(
                        UniconsLine.angle_left,
                        size: 30,
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed(ROUTER.PROFILE_EDIT);
                      },
                    ),
                    Divider(),
                    ListTile(
                      leading: Image.asset('assets/images/profile/love.png'),
                      title: Text(
                        "Kreator Pilihanmu",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 12,
                        ),
                      ),
                      trailing: Icon(
                        UniconsLine.angle_left,
                        size: 30,
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed(ROUTER.PROFILE_CREATOR);
                      },
                    ),
                    Divider(),
                    ListTile(
                      leading: Image.asset('assets/images/profile/lock.png'),
                      title: Text(
                        "Ubah Kata Sandi",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 12,
                        ),
                      ),
                      trailing: Icon(
                        UniconsLine.angle_left,
                        size: 30,
                      ),
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(ROUTER.PROFILE_PASSWORD);
                      },
                    ),
                    Divider(),
                    ListTile(
                      leading: Image.asset('assets/images/profile/info.png'),
                      title: Text(
                        "Bantuan",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 12,
                        ),
                      ),
                      trailing: Icon(
                        UniconsLine.angle_left,
                        size: 30,
                      ),
                      onTap: () {},
                    ),
                    Divider(),
                    ListTile(
                      leading: Image.asset('assets/images/profile/logout.png'),
                      title: Text(
                        "Keluar",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 12,
                        ),
                      ),
                      trailing: Icon(
                        UniconsLine.angle_left,
                        size: 30,
                      ),
                      onTap: () {},
                    ),
                    Divider(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
