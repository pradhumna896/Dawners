import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/rewordacreen/reward_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scratcher/widgets.dart';

class RewardScreenTwo extends StatelessWidget {
  const RewardScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            height: Dimentions.height60,
            width: double.maxFinite,
            decoration: BoxDecoration(color: Color(0xff6F4BC2)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimentions.width15),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  Gap(Dimentions.width20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Rewards",
                        style: GoogleFonts.montserrat(
                            fontSize: Dimentions.font18,
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Last Update 27 Aug 2021",
                        style: GoogleFonts.montserrat(
                            fontSize: Dimentions.font14,
                            color: Color(0xb4ffffff),
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    "assets/svg_icon/settings.svg",
                    width: Dimentions.width20,
                    height: Dimentions.height20,
                    color: Color(0xffFFFFFF),
                  ),
                  Gap(Dimentions.width10),
                  SvgPicture.asset(
                    "assets/svg_icon/questionmark.svg",
                    width: Dimentions.width20,
                    height: Dimentions.height20,
                    color: Color(0xffFFFFFF),
                  )
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: Dimentions.width10),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: Dimentions.height10),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    height: Dimentions.height83,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: Dimentions.width5,
                              vertical: Dimentions.height5),
                          decoration: BoxDecoration(
                              color: Color(0xff6F4BC2),
                              borderRadius:
                                  BorderRadius.circular(Dimentions.height14)),
                          child: SvgPicture.asset("assets/svg_icon/rupees.svg"),
                        ),
                        Text(
                          "Cashback",
                          style: GoogleFonts.montserrat(
                              color: Color(0xff000000),
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.currency_rupee,
                                size: 12, color: Color(0xff000000)),
                            Text(
                              "20",
                              style: GoogleFonts.montserrat(
                                  color: Color(0xff000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
                  Container(
                    height: Dimentions.height83,
                    width: 1,
                    color: Color(0xff7B8D9E),
                  ),
                  Expanded(
                      child: Container(
                    height: Dimentions.height83,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: Dimentions.width5,
                              vertical: Dimentions.height5),
                          decoration: BoxDecoration(
                              color: Color(0xff6F4BC2),
                              borderRadius:
                                  BorderRadius.circular(Dimentions.height14)),
                          child: SvgPicture.asset(
                              "assets/svg_icon/couponstag.svg"),
                        ),
                        Text(
                          "Coupons",
                          style: GoogleFonts.montserrat(
                              color: Color(0xff000000),
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "183",
                          style: GoogleFonts.montserrat(
                              color: Color(0xff000000),
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  )),
                  Container(
                    height: Dimentions.height83,
                    width: 1,
                    color: Color(0xff7B8D9E),
                  ),
                  Expanded(
                      child: Container(
                    height: Dimentions.height83,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: Dimentions.width5,
                              vertical: Dimentions.height5),
                          decoration: BoxDecoration(
                              color: Color(0xff6F4BC2),
                              borderRadius:
                                  BorderRadius.circular(Dimentions.height14)),
                          child: SvgPicture.asset(
                              "assets/svg_icon/percentoffer.svg"),
                        ),
                        Text(
                          "Offers",
                          style: GoogleFonts.montserrat(
                              color: Color(0xff000000),
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "20",
                          style: GoogleFonts.montserrat(
                              color: Color(0xff000000),
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
          Gap(Dimentions.height10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: Dimentions.width10),
            height: Dimentions.height61,
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimentions.height14),
                color: Color(0xff4F83DF)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimentions.width10),
              child: Row(
                children: [
                  SvgPicture.asset("assets/svg_icon/trophy.svg"),
                  Gap(Dimentions.width15),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Want Batter Rewards",
                        style: GoogleFonts.montserrat(
                            color: Color(0xffFFFFFF),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Tell Us What You Like",
                        style: GoogleFonts.montserrat(
                            color: Color(0xffFFFFFF),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xffFFFFFF),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
                itemCount: 10,
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
                                  builder: (ctx) => RewardDetailsScreen()));
                        },
                        child: ScratcherContianerTwo()),
                  );
                }),
          )
        ],
      ),
    ));
  }
}

class ScratcherContianerTwo extends StatelessWidget {
  const ScratcherContianerTwo({
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
