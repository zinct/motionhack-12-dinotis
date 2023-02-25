import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/core/constant/router.dart';
import 'package:motionhack/core/resources/colors.dart';
import 'package:motionhack/core/resources/gradient.dart';
import 'package:motionhack/core/widgets/custom_text_input.dart';
import 'package:motionhack/features/auth/cubit/auth_cubit.dart';
import 'package:motionhack/features/event/screen/event_screen.dart';
import 'package:motionhack/features/home/bloc/home_bloc.dart';
import 'package:motionhack/features/home/shimmer/hero_shimmer.dart';
import 'package:motionhack/features/home/shimmer/slideshow_shimmer.dart';
import 'package:motionhack/features/home/shimmer/top_creator_shimmer.dart';
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
      EventScreen(),
      ForumChatTab(),
      ProfileScreen(),
    ];

    return Scaffold(
      backgroundColor: BaseColors.backgroundColor,
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

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: BaseColors.primaryColor,
      onRefresh: () async {
        context.read<HomeBloc>().add(HomeEventFetching());
      },
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              decoration: BoxDecoration(
                gradient: BaseGradient.primaryGradient,
              ),
              child: Column(children: [
                BlocBuilder<AuthCubit, AuthState>(builder: ((context, state) {
                  if (state.status == AuthStateStatus.logout ||
                      state.user == null) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Selamat Datang!",
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Halo,",
                              style: GoogleFonts.inter().copyWith(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              state.user!.name,
                              style: GoogleFonts.inter().copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () => Navigator.of(context)
                              .pushNamed(ROUTER.NOTIFICATION),
                          child: SvgPicture.asset(
                            'assets/svg/ic_notification.svg',
                            color: Colors.white,
                          ),
                        ),
                      ],
                    );
                  }
                })),
                SizedBox(height: 30),
                CustomTextInput(
                  hintText: "Cari kreator pilihanmu disini...",
                  prefixIcon: Icon(
                    UniconsLine.search,
                    color: Color(0xFF1F0E31),
                  ),
                ),
              ]),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  BlocBuilder<AuthCubit, AuthState>(builder: ((context, state) {
                    if (state.status == AuthStateStatus.done) {
                      if (state.user == null)
                        return HeroShimmer();
                      else
                        return UserStatsWidget();
                    } else {
                      return Container();
                    }
                  })),
                  SizedBox(height: 20),
                  BlocBuilder<HomeBloc, HomeState>(builder: ((context, state) {
                    if (state.status == HomeStateStatus.done &&
                        state.topCreators.length > 0) {
                      var creator = state.topCreators[0];
                      return Container(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 130,
                                      width: double.infinity,
                                      child: Image.network(
                                        creator.profilePhoto,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        gradient: BaseGradient.primaryGradient,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        ),
                                      ),
                                      child: Text(
                                        creator.name,
                                        style: GoogleFonts.inter().copyWith(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                        overflow: TextOverflow.clip,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              flex: 2,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFFE0CDFF),
                                ),
                                height: 175,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Jangan lewatkan kesempatan sesi eksklusif bersama kreator nomor 1 minggu ini",
                                      style: GoogleFonts.inter().copyWith(
                                        fontSize: 13,
                                        color: Colors.black,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 5,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        gradient: BaseGradient.primaryGradient,
                                      ),
                                      child: Text(
                                        "Booking Sekarang!",
                                        style: GoogleFonts.inter().copyWith(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    } else
                      return HeroShimmer();
                  })),
                  SizedBox(height: 20),
                  BlocBuilder<HomeBloc, HomeState>(builder: ((context, state) {
                    if (state.status == HomeStateStatus.done &&
                        state.topCreators.length > 0)
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: state.topCreators
                            .sublist(1, 5)
                            .map((e) => Flexible(
                                  child: InkWell(
                                    onTap: () =>
                                        Navigator.of(context).pushNamed(
                                      ROUTER.CREATOR_DETAIL,
                                      arguments: e,
                                    ),
                                    child: Container(
                                      width: 81,
                                      height: 81,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 60,
                                            width: double.infinity,
                                            child: Image.network(
                                              e.profilePhoto,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 21,
                                            decoration: BoxDecoration(
                                              gradient:
                                                  BaseGradient.primaryGradient,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(5),
                                                bottomRight: Radius.circular(5),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                e.name,
                                                style: GoogleFonts.inter()
                                                    .copyWith(
                                                  fontSize: 9,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                                overflow: TextOverflow.clip,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ))
                            .toList(),
                      );
                    else
                      return TopCreatorShimmer();
                  })),
                  SizedBox(height: 20),
                  BlocBuilder<HomeBloc, HomeState>(builder: ((context, state) {
                    if (state.status == HomeStateStatus.done &&
                        state.topCreators.length > 0)
                      return CarouselSlider(
                        options: CarouselOptions(
                          viewportFraction: 1,
                          enlargeCenterPage: true,
                          height: 200,
                        ),
                        items: [1, 2, 3].map((i) {
                          return Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/slideshow/bisa-ngapain.png',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          );
                        }).toList(),
                      );
                    else
                      return SlideshowShimmer();
                  })),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserStatsWidget extends StatelessWidget {
  const UserStatsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.05),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Saldo Kamu",
                  style: GoogleFonts.inter().copyWith(
                    fontSize: 10,
                    color: BaseColors.primaryColor,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svg/ic_wallet.svg',
                      height: 18,
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
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: VerticalDivider(
              thickness: 1.3,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Poin Saya",
                  style: GoogleFonts.inter().copyWith(
                    fontSize: 10,
                    color: BaseColors.primaryColor,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      UniconsLine.usd_circle,
                      color: BaseColors.primaryColor,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "0 pts",
                      style: GoogleFonts.inter().copyWith(
                        fontSize: 20,
                        color: BaseColors.primaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
