import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:motionhack/core/constant/router.dart';
import 'package:motionhack/features/auth/cubit/auth_cubit.dart';
import 'package:motionhack/features/auth/screen/login_screen.dart';
import 'package:motionhack/features/home/bloc/home_bloc.dart';
import 'package:motionhack/features/home/screen/home_screen.dart';
import 'package:motionhack/features/intro/screen/splash_screen.dart';
import 'package:motionhack/features/user/screen/profile_coin_screen.dart';
import 'package:motionhack/features/user/screen/profile_edit_screen.dart';
import 'package:motionhack/features/user/screen/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit()),
        BlocProvider(create: (context) => HomeBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: ROUTER.SPLASH,
        routes: {
          ROUTER.SPLASH: (context) => SplashScreen(),
          ROUTER.LOGIN: (context) => LoginScreen(),
          ROUTER.HOME: (context) => HomeScreen(),
          ROUTER.PROFILE: (context) => ProfileScreen(),
          ROUTER.PROFILE_EDIT: (context) => ProfileEditScreen(),
          ROUTER.PROFILE_COIN: (context) => ProfileCoinScreen(),
        },
      ),
    );
  }
}
