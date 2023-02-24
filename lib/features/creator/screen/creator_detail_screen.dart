import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/core/resources/colors.dart';
import 'package:motionhack/core/resources/gradient.dart';

class CreatorDetailScreen extends StatefulWidget {
  const CreatorDetailScreen({super.key});

  @override
  State<CreatorDetailScreen> createState() => _CreatorDetailScreenState();
}

class _CreatorDetailScreenState extends State<CreatorDetailScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
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
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
                    child: Image.asset(
                      'assets/images/creator.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Dr. Twelvest, SpOG-KFER, Msc",
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
              borderRadius: BorderRadius.circular(30),
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
          Container(
            color: Colors.white,
            width: double.infinity,
            height: 400,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TabBarView(
              controller: _tabController,
              children: [
                Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          VideoCallTime(),
                          SizedBox(width: 20),
                          VideoCallTime(),
                          SizedBox(width: 20),
                          VideoCallTime(),
                          SizedBox(width: 20),
                          VideoCallTime(),
                          SizedBox(width: 20),
                          VideoCallTime(),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset('assets/images/group.png'),
                    SizedBox(
                      height: 20,
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
              ],
            ),
          ),
        ],
      )),
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
