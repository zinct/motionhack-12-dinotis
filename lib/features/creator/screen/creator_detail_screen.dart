import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/core/constant/router.dart';
import 'package:motionhack/core/resources/colors.dart';
import 'package:motionhack/core/resources/gradient.dart';
import 'package:motionhack/features/auth/cubit/auth_cubit.dart';
import 'package:motionhack/features/creator/entities/creator.dart';
import 'package:unicons/unicons.dart';

class CreatorDetailScreen extends StatefulWidget {
  const CreatorDetailScreen({super.key});

  @override
  State<CreatorDetailScreen> createState() => _CreatorDetailScreenState();
}

class _CreatorDetailScreenState extends State<CreatorDetailScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var creator = ModalRoute.of(context)?.settings.arguments as Creator;
    TabController _tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      backgroundColor: BaseColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: BaseColors.backgroundColor,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(666),
                        child: Image.network(
                          creator.profilePhoto,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      creator.name,
                      style: GoogleFonts.inter().copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Dokter, Konten Kreator",
                      style: GoogleFonts.inter().copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: TabBar(
                  labelColor: Colors.black,
                  indicatorColor: BaseColors.primaryColor,
                  controller: _tabController,
                  tabs: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        "Group Video Call",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        "Private Video Call",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  VideoCallTime(),
                                  SizedBox(width: 10),
                                  VideoCallTime(),
                                  SizedBox(width: 10),
                                  VideoCallTime(),
                                  SizedBox(width: 10),
                                  VideoCallTime(),
                                  SizedBox(width: 10),
                                  VideoCallTime(),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Icon(
                                  UniconsLine.play_circle,
                                  size: 30,
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    "Psychology Talk: UU PLP (Pendidikan dan Layanan Psikologi) - Part 2",
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Icon(
                                  UniconsLine.clock,
                                  color: BaseColors.primaryColor,
                                  size: 30,
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
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(
                                  UniconsLine.users_alt,
                                  color: BaseColors.primaryColor,
                                  size: 30,
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
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        UniconsLine.coins,
                                        color: BaseColors.primaryColor,
                                        size: 30,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "19.5189",
                                        style: GoogleFonts.inter().copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                BlocBuilder<AuthCubit, AuthState>(
                                  builder: (context, state) {
                                    if (state.status ==
                                            AuthStateStatus.logout ||
                                        state.user == null) {
                                      return InkWell(
                                        onTap: () {
                                          Navigator.of(context)
                                              .pushNamed(ROUTER.LOGIN);
                                        },
                                        child: Container(
                                          height: 40,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 30,
                                            vertical: 5,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            gradient:
                                                BaseGradient.primaryGradient,
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Booking",
                                              style:
                                                  GoogleFonts.inter().copyWith(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    } else {
                                      return InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushNamed(
                                              ROUTER.MEETING_BOOKING);
                                        },
                                        child: Container(
                                          height: 40,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 30,
                                            vertical: 5,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            gradient:
                                                BaseGradient.primaryGradient,
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Booking",
                                              style:
                                                  GoogleFonts.inter().copyWith(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/group.png',
                              height: 237,
                            ),
                            Text(
                              "Belum ada private video call",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VideoCallTime extends StatelessWidget {
  const VideoCallTime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: BaseGradient.primaryGradient,
      ),
      child: Column(
        children: [
          Text(
            "22 Feb",
            style: GoogleFonts.inter().copyWith(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          Text(
            "HARI INI",
            style: GoogleFonts.inter().copyWith(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
