import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/core/constant/router.dart';
import 'package:motionhack/core/resources/colors.dart';
import 'package:motionhack/core/widgets/custom_button.dart';
import 'package:motionhack/core/widgets/custom_text_input.dart';

class MeetingBookingScreen extends StatefulWidget {
  const MeetingBookingScreen({super.key});

  @override
  State<MeetingBookingScreen> createState() => _MeetingBookingScreenState();
}

class _MeetingBookingScreenState extends State<MeetingBookingScreen> {
  bool poin = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Pilih metode pembayaran",
          style: GoogleFonts.inter().copyWith(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: ListTile(
                  title: Text(
                    "Gunakan Point (100 pts)",
                    style: GoogleFonts.inter().copyWith(
                      fontSize: 15,
                    ),
                  ),
                  trailing: Switch(
                    inactiveThumbColor: BaseColors.primaryColor,
                    value: poin,
                    onChanged: (value) {
                      setState(() {
                        poin = value;
                      });
                    },
                    activeColor: BaseColors.primaryColor,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: ListTile(
                  title: Text(
                    "Saldo (Rp 10.000)",
                    style: GoogleFonts.inter().copyWith(
                      fontSize: 15,
                    ),
                  ),
                  trailing: Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: BaseColors.primaryColor,
                          ))),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Virtual Account",
                      style: GoogleFonts.inter().copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Biaya Admin sebesar Rp 4.500",
                      style: GoogleFonts.inter().copyWith(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 20),
                    ListTile(
                      leading: Image.asset('assets/images/payment/bri.png'),
                      title: Text(
                        "VA BRI",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 15,
                        ),
                      ),
                      trailing: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: BaseColors.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Image.asset('assets/images/payment/bni.png'),
                      title: Text(
                        "VA BNI",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: BaseColors.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Image.asset('assets/images/payment/mandiri.png'),
                      title: Text(
                        "VA MANDIRI",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 15,
                        ),
                      ),
                      trailing: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: BaseColors.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Image.asset('assets/images/payment/bersama.png'),
                      title: Text(
                        "ATM BERSAMA",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 15,
                        ),
                      ),
                      trailing: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: BaseColors.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Image.asset('assets/images/payment/bca.png'),
                      title: Text(
                        "VA BCA",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 15,
                        ),
                      ),
                      trailing: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: BaseColors.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "E-Wallet",
                      style: GoogleFonts.inter().copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Biaya Admin sebesar 1.5% dari transaksi",
                      style: GoogleFonts.inter().copyWith(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 20),
                    ListTile(
                      leading: Image.asset('assets/images/payment/shopee.png'),
                      title: Text(
                        "Shopee Pay",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 15,
                        ),
                      ),
                      trailing: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: BaseColors.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Image.asset('assets/images/payment/gopay.png'),
                      title: Text(
                        "Gopay",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 15,
                        ),
                      ),
                      trailing: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: BaseColors.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "E-Wallet",
                      style: GoogleFonts.inter().copyWith(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "Biaya Admin sebesar 1.5% dari transaksi",
                      style: GoogleFonts.inter().copyWith(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 20),
                    ListTile(
                      leading: Image.asset('assets/images/payment/qris.png'),
                      title: Text(
                        "QRIS (LinkAja, Dana, Gopay, dll)",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Memiliki Kode Promo?",
                      style: GoogleFonts.inter().copyWith(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 50,
                      child: Row(
                        children: [
                          Expanded(
                            child: CustomTextInput(),
                            flex: 2,
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: CustomButton(
                              child: Center(
                                child: Text(
                                  "Pasang",
                                  style: GoogleFonts.inter().copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            flex: 1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              CustomButton(
                onTap: () {
                  Navigator.of(context).pushNamed(ROUTER.MEETING_PAYMENT);
                },
                child: Center(
                  child: Text(
                    "Gunakan Metode Ini",
                    style: GoogleFonts.inter().copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      )),
    );
  }
}
