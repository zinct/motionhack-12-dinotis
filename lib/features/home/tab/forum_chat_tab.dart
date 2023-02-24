import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/core/constant/router.dart';
import 'package:motionhack/core/resources/colors.dart';
import 'package:motionhack/core/resources/gradient.dart';
import 'package:motionhack/core/widgets/custom_text_input.dart';
import 'package:unicons/unicons.dart';

class ForumChatTab extends StatelessWidget {
  const ForumChatTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Forum Chat",
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
            prefixIcon: Icon(UniconsLine.search),
          ),
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ForumChatItem(),
                  SizedBox(height: 20),
                  ForumChatItem(),
                  SizedBox(height: 20),
                  ForumChatItem(),
                  SizedBox(height: 20),
                  ForumChatItem(),
                  SizedBox(height: 20),
                  ForumChatItem(),
                  SizedBox(height: 20),
                  ForumChatItem(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ForumChatItem extends StatelessWidget {
  const ForumChatItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(ROUTER.FORUM_DETAIL),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 12,
              color: Colors.black.withOpacity(.03),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Forum Kesehatan",
                  style: GoogleFonts.inter().copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Oleh Dr. Twelvest ST.S",
                  style: GoogleFonts.inter().copyWith(
                    fontSize: 10,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.8),
                        color: BaseColors.shadeColor,
                      ),
                      child: Text(
                        "Kesehatan",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.8),
                        color: BaseColors.shadeColor,
                      ),
                      child: Text(
                        "Edukasi",
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                  decoration: BoxDecoration(
                    gradient: BaseGradient.primaryGradient,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "Join",
                    style: GoogleFonts.inter().copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
