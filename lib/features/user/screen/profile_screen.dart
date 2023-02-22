import 'package:flutter/material.dart';
import 'package:motionhack/core/resources/colors.dart';
import 'package:motionhack/core/resources/gradient.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BaseColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          Text("Indra Mahesa"),
                          Text("+628123456789"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
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
                            Text("Koin Kamu"),
                            Text("0"),
                          ],
                        ),
                        flex: 4,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0XFFDDDDDD),
                          ),
                          width: 20,
                          height: 20,
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0XFFDDDDDD),
                          ),
                          width: 20,
                          height: 20,
                        ),
                        flex: 1,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text("Pengaturan Akun"),
                SizedBox(height: 20),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Ubah Profil"),
                  trailing: Icon(Icons.arrow_left),
                ),
                Divider(height: 25),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Kreator Pilihanmu"),
                  trailing: Icon(Icons.arrow_left),
                ),
                Divider(height: 25),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Ubah Kata Sandi"),
                  trailing: Icon(Icons.arrow_left),
                ),
                Divider(height: 25),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Bantuan"),
                  trailing: Icon(Icons.arrow_left),
                ),
                Divider(height: 25),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Keluar"),
                  trailing: Icon(Icons.arrow_left),
                ),
                Divider(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
