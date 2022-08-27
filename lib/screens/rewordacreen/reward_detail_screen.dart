import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class RewardDetailsScreen extends StatelessWidget {
  const RewardDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xff6F4BC2),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Color(0xffFFFFFF),
            )),
        title: Text(
          "Reward",
          style: KTextClass.AppBarStyle.copyWith(color: Color(0xffFFFFFF)),
        ),
        actions: [
          SvgPicture.asset(
            "assets/svg_icon/questionmark.svg",
            height: Dimentions.height18,
            width: Dimentions.width18,
          ),
          Gap(Dimentions.width15)
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(Dimentions.height44),
            Text(
              "Cashback Won",
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: Dimentions.font24),
            ),
            Gap(Dimentions.height5),
            Text(
              "01 Dec 2018",
              style: GoogleFonts.montserrat(
                  color: Color(0xff83939E),
                  fontWeight: FontWeight.w500,
                  fontSize: Dimentions.font18),
            ),
            Image.asset(
              "assets/image/rewardgift.png",
              height: Dimentions.height140,
              width: Dimentions.width183,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.currency_rupee,
                  color: Colors.black,
                  size: Dimentions.font24,
                ),
                Text(
                  "21",
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: Dimentions.font24),
                ),
              ],
            ),
            Spacer(),
            Divider(
              height: 5,
              color: Color(0xff83939E),
            ),
            Gap(Dimentions.height10),
            Text(
              "TELL YOUR FRIENDS",
              style: GoogleFonts.montserrat(
                  color: Color(0xff000000),
                  fontSize: Dimentions.font14,
                  fontWeight: FontWeight.w600),
            ),
            Gap(Dimentions.height15)
          ],
        ),
      ),
    );
  }
}
