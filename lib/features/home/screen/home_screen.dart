import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/core/constant/router.dart';
import 'package:motionhack/core/resources/colors.dart';
import 'package:motionhack/core/resources/gradient.dart';
import 'package:motionhack/core/widgets/custom_text_input.dart';
import 'package:motionhack/features/home/tab/forum_chat_tab.dart';
import 'package:motionhack/features/user/screen/profile_screen.dart';
import 'package:unicons/unicons.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List body = [
      HomeTab(),
      Container(),
      ForumChatTab(),
      ProfileScreen(),
    ];

    return Scaffold(
      body: SafeArea(
        child: body[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          print(index);
          setState(() => currentIndex = index);
        },
        selectedItemColor: BaseColors.primaryColor,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/svg/ic_home_unactive.svg',
                width: 23,
                color: BaseColors.secondaryColor,
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/svg/ic_home_unactive.svg',
                width: 23,
                color: BaseColors.primaryColor,
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/svg/ic_event_unactive.svg',
                width: 23,
                color: BaseColors.secondaryColor,
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/svg/ic_event_unactive.svg',
                width: 23,
                color: BaseColors.primaryColor,
              ),
            ),
            label: "Dinotis Event",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/svg/ic_message_unactive.svg',
                width: 23,
                color: BaseColors.secondaryColor,
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/svg/ic_message_unactive.svg',
                width: 23,
                color: BaseColors.primaryColor,
              ),
            ),
            label: "Forum Chat",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/svg/ic_user.svg',
                width: 23,
                color: BaseColors.secondaryColor,
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/svg/ic_user.svg',
                width: 23,
                color: BaseColors.primaryColor,
              ),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Selamat Datang!",
                  style: GoogleFonts.inter().copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            CustomTextInput(
              hintText: "Cari kreator pilihanmu disini...",
              prefixIcon: Icon(UniconsLine.search),
            ),
            SizedBox(height: 20),
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
                        Navigator.of(context).pushNamed(ROUTER.PROFILE_COIN);
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
            SizedBox(height: 20),
            TabBar(
              labelColor: Colors.black,
              indicatorColor: BaseColors.primaryColor,
              controller: _tabController,
              tabs: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text("On Top"),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    "New Rising",
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.amber,
              width: double.infinity,
              height: 200,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    child: Text("hehe"),
                  ),
                  Container(
                    child: Text("hehe"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 1,
                enlargeCenterPage: true,
                height: 200,
              ),
              items: [1, 2, 3].map((i) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/slideshow/bisa-ngapain.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(ROUTER.CREATOR_DETAIL),
              child: Text("Creator"),
            )
          ],
        ),
      ),
    );
  }
}
