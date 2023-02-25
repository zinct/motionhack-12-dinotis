import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:motionhack/core/constant/router.dart';
import 'package:motionhack/core/resources/colors.dart';
import 'package:motionhack/core/utils/http_overrides.dart';
import 'package:motionhack/features/auth/cubit/auth_cubit.dart';
import 'package:motionhack/features/auth/screen/login_screen.dart';
import 'package:motionhack/features/creator/screen/creator_detail_screen.dart';
import 'package:motionhack/features/event/bloc/event_bloc.dart';
import 'package:motionhack/features/event/screen/event_screen.dart';
import 'package:motionhack/features/forum/screen/forum_detail_screen.dart';
import 'package:motionhack/features/home/bloc/home_bloc.dart';
import 'package:motionhack/features/home/screen/home_screen.dart';
import 'package:motionhack/features/intro/screen/onboard_one_screen.dart';
import 'package:motionhack/features/intro/screen/onboard_two_screen.dart';
import 'package:motionhack/features/intro/screen/role_screen.dart';
import 'package:motionhack/features/intro/screen/splash_screen.dart';
import 'package:motionhack/features/meeting/screen/meeting_detail_screen.dart';
import 'package:motionhack/features/meeting/screen/meeting_line_screen.dart';
import 'package:motionhack/features/notification/screen/notification_screen.dart';
import 'package:motionhack/features/user/screen/profile_coin_screen.dart';
import 'package:motionhack/features/user/screen/profile_creator_screen.dart';
import 'package:motionhack/features/user/screen/profile_edit_screen.dart';
import 'package:motionhack/features/user/screen/profile_password_screen.dart';
import 'package:motionhack/features/user/screen/profile_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit()),
        BlocProvider(
            create: (context) => EventBloc()..add(EventEventFetching())),
        BlocProvider(create: (context) => HomeBloc()..add(HomeEventFetching())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: ROUTER.ONBOARDING_ONE,
        theme: ThemeData(
          primaryColor: BaseColors.primaryColor,
          // primarySwatch: BaseColors.primaryColor,
        ),
        routes: {
          ROUTER.SPLASH: (context) => SplashScreen(),
          ROUTER.ONBOARDING_ONE: (context) => OnboardOneScreen(),
          ROUTER.ONBOARDING_TWO: (context) => OnboardTwoScreen(),
          ROUTER.LOGIN: (context) => LoginScreen(),
          ROUTER.HOME: (context) => HomeScreen(),
          ROUTER.PROFILE: (context) => ProfileScreen(),
          ROUTER.PROFILE_EDIT: (context) => ProfileEditScreen(),
          ROUTER.PROFILE_CREATOR: (context) => ProfileCreatorScreen(),
          ROUTER.PROFILE_COIN: (context) => ProfileCoinScreen(),
          ROUTER.PROFILE_PASSWORD: (context) => ProfilePasswordScreen(),
          ROUTER.ROLE: (context) => RoleScreen(),
          ROUTER.FORUM_DETAIL: (context) => ForumDetailScreen(),
          ROUTER.CREATOR_DETAIL: (context) => CreatorDetailScreen(),
          ROUTER.EVENT: (context) => EventScreen(),
          ROUTER.MEETING_DETAIL: (context) => MeetingDetailScreen(),
          ROUTER.MEETING_LINE: (context) => MeetingLineScreen(),
          ROUTER.NOTIFICATION: (context) => NotificationScreen(),
        },
      ),
    );
  }
}
