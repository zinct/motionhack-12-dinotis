import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/core/constant/router.dart';
import 'package:motionhack/core/resources/colors.dart';
import 'package:motionhack/core/widgets/custom_button.dart';
import 'package:motionhack/core/widgets/custom_text_input.dart';
import 'package:motionhack/features/auth/cubit/auth_cubit.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          'assets/images/logo.png',
          scale: 4,
        ),
        actions: [
          SvgPicture.asset('assets/svg/ic_info.svg'),
          SizedBox(width: 15),
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: BaseColors.backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Masuk Akun",
                      style: GoogleFonts.inter().copyWith(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Silahkan masukan nomor handphone & kata sandi akun anda yang telah terdaftar untuk masuk ke aplikasi",
                      style: GoogleFonts.inter().copyWith(
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 40),
                    CustomTextInput(
                      hintText: "Masukan nomor handphone",
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(20),
                        child: SvgPicture.asset('assets/svg/indonesia.svg'),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Nomor handphone harus di isi!';
                        }
                        return null;
                      },
                      controller: phoneController,
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 20),
                    CustomTextInput(
                      hintText: "Masukan kata sandi",
                      obsecureText: true,
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password harus di isi!';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      child: Text(
                        "Lupa kata sandi?",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 15,
                          color: BaseColors.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      child: Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Ketika masuk, Anda menyetujui ",
                              style: GoogleFonts.inter().copyWith(
                                fontSize: 15,
                              ),
                            ),
                            TextSpan(
                              text: "Persyaratan Layanan ",
                              style: GoogleFonts.inter().copyWith(
                                fontSize: 15,
                                color: BaseColors.primaryColor,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(
                              text:
                                  "Dinotis & mengakui bahwa Pemberitahuan Privasi kami berlaku.",
                              style: GoogleFonts.inter().copyWith(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      child: Text.rich(
                          textAlign: TextAlign.center,
                          TextSpan(children: [
                            TextSpan(
                              text: "Belum punya akun? ",
                              style: GoogleFonts.inter().copyWith(
                                fontSize: 15,
                              ),
                            ),
                            TextSpan(
                              text: "Daftar di sini",
                              style: GoogleFonts.inter().copyWith(
                                fontSize: 15,
                                color: BaseColors.primaryColor,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ])),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BlocConsumer<AuthCubit, AuthState>(
                  listener: (context, state) {
                if (state.status == AuthStateStatus.done) {
                  if (state.user != null) {
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed(ROUTER.HOME);
                  }
                }
              }, builder: ((context, state) {
                if (state.status == AuthStateStatus.loading) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: CustomButton(
                      child: Center(
                          child: CircularProgressIndicator(
                        color: Colors.white,
                      )),
                    ),
                  );
                } else {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: CustomButton(
                      child: Center(
                        child: Text(
                          "Masuk",
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<AuthCubit>().login(
                              phoneController.text, passwordController.text);
                        }
                      },
                    ),
                  );
                }
              })),
            ),
          ],
        ),
      ),
    );
  }
}
