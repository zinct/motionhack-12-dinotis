import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/core/constant/router.dart';
import 'package:motionhack/core/resources/colors.dart';
import 'package:motionhack/core/resources/gradient.dart';
import 'package:motionhack/core/widgets/custom_text_input.dart';
import 'package:motionhack/features/event/bloc/event_bloc.dart';
import 'package:motionhack/features/event/shimmer/popular_creator_shimmer.dart';
import 'package:motionhack/features/event/shimmer/profession_shimmer.dart';
import 'package:motionhack/features/meeting/entities/meeting.dart';
import 'package:unicons/unicons.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    return RefreshIndicator(
      onRefresh: () async {},
      color: BaseColors.primaryColor,
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Dinotis Event",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        UniconsLine.plus_circle,
                        color: BaseColors.primaryColor,
                        size: 28,
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  CustomTextInput(
                    hintText: "Cari kreator pilihanmu disini...",
                    prefixIcon: Icon(
                      UniconsLine.search,
                      color: BaseColors.primaryColor,
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
                        child: Text(
                          "Tentang Event",
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
                          "Kreator Kami",
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        children: [
                          SizedBox(height: 25),
                          Container(
                            width: double.infinity,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              child: BlocBuilder<EventBloc, EventState>(
                                  builder: ((context, state) {
                                if (state.status == EventStateStatus.done &&
                                    state.professions!.length > 0) {
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: state.professions!
                                        .map((e) => Row(
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 10,
                                                      vertical: 8),
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFE9EEF4),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                  ),
                                                  child: Text(
                                                    e.name,
                                                    style: GoogleFonts.inter()
                                                        .copyWith(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                              ],
                                            ))
                                        .toList(),
                                  );
                                } else {
                                  return ProfessionShimmer();
                                }
                              })),
                            ),
                          ),
                          SizedBox(height: 25),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/creator.png'),
                                    radius: 20,
                                  ),
                                  title: Text(
                                    "Indra Mahesa",
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "UI / UX",
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/creator.png'),
                                    radius: 20,
                                  ),
                                  title: Text(
                                    "Indra Mahesa",
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "UI / UX",
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/creator.png'),
                                    radius: 20,
                                  ),
                                  title: Text(
                                    "Indra Mahesa",
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "UI / UX",
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/creator.png'),
                                    radius: 20,
                                  ),
                                  title: Text(
                                    "Indra Mahesa",
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "UI / UX",
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/creator.png'),
                                    radius: 20,
                                  ),
                                  title: Text(
                                    "Indra Mahesa",
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "UI / UX",
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/creator.png'),
                                    radius: 20,
                                  ),
                                  title: Text(
                                    "Indra Mahesa",
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "UI / UX",
                                    style: GoogleFonts.inter().copyWith(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          Container(
                            width: double.infinity,
                            child: Text(
                              "Yang lagi populer",
                              style: GoogleFonts.inter().copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: double.infinity,
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              child: BlocBuilder<EventBloc, EventState>(
                                  builder: ((context, state) {
                                if (state.status == EventStateStatus.done &&
                                    state.creators!.length > 0) {
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: state.creators!
                                        .sublist(0, 5)
                                        .map(
                                          (e) => Row(
                                            children: [
                                              InkWell(
                                                onTap: () => Navigator.of(
                                                        context)
                                                    .pushNamed(
                                                        ROUTER.CREATOR_DETAIL,
                                                        arguments: e),
                                                child: Container(
                                                  width: 168,
                                                  child: Column(
                                                    children: [
                                                      SizedBox(
                                                        width: 150,
                                                        child: Image.network(
                                                          e.profilePhoto,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        height: 27,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient: BaseGradient
                                                              .primaryGradient,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    5),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    5),
                                                          ),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            e.name,
                                                            style: GoogleFonts
                                                                    .inter()
                                                                .copyWith(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            overflow:
                                                                TextOverflow
                                                                    .clip,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                            ],
                                          ),
                                        )
                                        .toList(),
                                  );
                                } else {
                                  return PopularCreatorShimmer();
                                }
                              })),
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            width: double.infinity,
                            child: Text(
                              "Rekomendasi Buat Kamu",
                              style: GoogleFonts.inter().copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: double.infinity,
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              child: BlocBuilder<EventBloc, EventState>(
                                  builder: ((context, state) {
                                if (state.status == EventStateStatus.done &&
                                    state.creators!.length > 0) {
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: state.creators!
                                        .sublist(5, 10)
                                        .map(
                                          (e) => Row(
                                            children: [
                                              InkWell(
                                                onTap: () => Navigator.of(
                                                        context)
                                                    .pushNamed(
                                                        ROUTER.CREATOR_DETAIL,
                                                        arguments: e),
                                                child: Container(
                                                  width: 168,
                                                  child: Column(
                                                    children: [
                                                      SizedBox(
                                                        width: 150,
                                                        child: Image.network(
                                                          e.profilePhoto,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        height: 27,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient: BaseGradient
                                                              .primaryGradient,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    5),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    5),
                                                          ),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            e.name,
                                                            style: GoogleFonts
                                                                    .inter()
                                                                .copyWith(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            overflow:
                                                                TextOverflow
                                                                    .clip,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                            ],
                                          ),
                                        )
                                        .toList(),
                                  );
                                } else {
                                  return PopularCreatorShimmer();
                                }
                              })),
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            width: double.infinity,
                            child: Text(
                              "Private Call",
                              style: GoogleFonts.inter().copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: double.infinity,
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              child: BlocBuilder<EventBloc, EventState>(
                                  builder: ((context, state) {
                                if (state.status == EventStateStatus.done &&
                                    state.meetings!.length > 0) {
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: state.meetings!
                                        .sublist(5, 10)
                                        .map(
                                          (e) => MeetingItem(e),
                                        )
                                        .toList(),
                                  );
                                } else {
                                  return PopularCreatorShimmer();
                                }
                              })),
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            width: double.infinity,
                            child: Text(
                              "Group Call",
                              style: GoogleFonts.inter().copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: double.infinity,
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              child: BlocBuilder<EventBloc, EventState>(
                                  builder: ((context, state) {
                                if (state.status == EventStateStatus.done &&
                                    state.meetings!.length > 0) {
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: state.meetings!
                                        .sublist(5, 10)
                                        .map(
                                          (e) => MeetingItem(e),
                                        )
                                        .toList(),
                                  );
                                } else {
                                  return PopularCreatorShimmer();
                                }
                              })),
                            ),
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
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

class MeetingItem extends StatelessWidget {
  MeetingItem(
    this.meeting, {
    super.key,
  });

  Meeting meeting;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => Navigator.of(context)
              .pushNamed(ROUTER.MEETING_DETAIL, arguments: meeting),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            width: 210,
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage('assets/images/people-forum.png'),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Indra Mahesa",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  child: Text(
                    meeting.title,
                    style: GoogleFonts.inter().copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: BaseGradient.primaryGradient,
                  ),
                  child: Center(
                    child: Text(
                      "Lihat Jadwal",
                      style: GoogleFonts.inter().copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
