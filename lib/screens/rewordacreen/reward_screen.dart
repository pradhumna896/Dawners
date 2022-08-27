import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/rewordacreen/reward_screen_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scratcher/scratcher.dart';

class RewardScreen extends StatefulWidget {
  RewardScreen({Key? key}) : super(key: key);

  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: Dimentions.height208,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image/rewardbgimage.png"),
                      fit: BoxFit.fill)),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimentions.width15,
                    vertical: Dimentions.height15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap:(){Navigator.pop(context);},
                          child: Icon(
                            Icons.arrow_back,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                        Gap(Dimentions.width20),
                        Text(
                          "Reward",
                          style: GoogleFonts.montserrat(
                              fontSize: Dimentions.font16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffFFFFFF)),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {
                            AutopayPopup(context);
                          },
                          child: Text(
                            "Autopay\nSettings",
                            style: GoogleFonts.montserrat(
                                color: Color(
                                  0xffFFFFFF,
                                ),
                                fontWeight: FontWeight.w700,
                                fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Text(
                      "Total Cashback Won",
                      style: GoogleFonts.montserrat(
                          fontSize: Dimentions.font14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffFFFFFF)),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          size: 24,
                          color: Color(0xffFFFFFF),
                        ),
                        Text(
                          "240",
                          style: GoogleFonts.montserrat(
                              fontSize: Dimentions.font24,
                              fontWeight: FontWeight.w800,
                              color: Color(0xffFFFFFF)),
                        ),
                      ],
                    ),
                    Text(
                      "Last Updated Just Now",
                      style: GoogleFonts.montserrat(
                          fontSize: Dimentions.font14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffFFFFFF)),
                    )
                  ],
                ),
              ),
            ),
            Gap(Dimentions.height5),
            Expanded(
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,

                      mainAxisExtent: Dimentions.height208,
                      childAspectRatio: 3 / 2),
                  itemBuilder: (ctx, i) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: Dimentions.width5,
                          top: Dimentions.height10,
                          right: Dimentions.width5),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => RewardScreenTwo()));
                          },
                          child: ScratcherContianer()),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class ScratcherContianer extends StatelessWidget {
  const ScratcherContianer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scratcher(
      image: Image.asset("assets/image/scratch.png"),
      color: Colors.red,
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimentions.height10),
            border: Border.all(color: Colors.grey)),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/image/rewardgift.png"),
            Text(
              "Cashback",
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: Dimentions.font14,
                  fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.currency_rupee,
                  color: Colors.black,
                  size: Dimentions.font14,
                ),
                Text(
                  "9",
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: Dimentions.font14,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Text(
              "1 hour ago",
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: Dimentions.font14,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}

void AutopayPopup(BuildContext context) {
  showDialog(
    barrierColor: Colors.black87,
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Gap(Dimentions.height15),

              Text(
                "CANCEL AUTOPAY",
                style: GoogleFonts.montserrat(
                    fontSize: Dimentions.font20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff000000)),
              ),
              Gap(Dimentions.height10),

              Text(
                "We are here to support you",
                style: GoogleFonts.montserrat(
                    fontSize: Dimentions.font12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff83939E)),
              ),
              Gap(Dimentions.height24),

              Material(
                borderRadius: BorderRadius.circular(Dimentions.height83),
                elevation: 5,
                child: Container(
                  height: Dimentions.height83,
                  width: Dimentions.width83,
                  decoration: BoxDecoration(
                      color: Color(0xffDCEDF9),
                      borderRadius: BorderRadius.circular(Dimentions.height83)),
                  child: Center(
                    child: Image.asset("assets/icons/Dbigcircle.png"),
                  ),
                ),
              ),
              Gap(Dimentions.height24),
              Text(
                "Your Earnt Coins And Rewards Will We Lost",
                style: GoogleFonts.montserrat(
                    fontSize: Dimentions.font12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff6739B7)),
              ),
              Gap(Dimentions.height10),
              Text(
                  "If you wish to continue, please drop us an email on “wearedawners@gmail.com” and our team will guide further for hassle free experience.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: Dimentions.font12,
                    color: Color(0xff83939E),
                    fontWeight: FontWeight.w600,
                  )),
              Gap(Dimentions.height14),
              Container(
                decoration: BoxDecoration(
                    gradient: kPurplegradient,
                    borderRadius: BorderRadius.circular(Dimentions.height14)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: Dimentions.height10,
                      horizontal: Dimentions.width56),
                  child: Text(
                    "Done",
                    style: GoogleFonts.montserrat(
                        color: Color(0xffFFFFFF),
                        fontSize: Dimentions.font14,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Gap(Dimentions.height20)
            ],
          ),
        );
      });
}
