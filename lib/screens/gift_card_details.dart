import 'package:dawners/helper/appbar_back_button.dart';
import 'package:dawners/helper/custom_botton_purple.dart';
import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/helper/custom_text.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/provider/card_controller.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class GiftCardDetails extends StatefulWidget {
  const GiftCardDetails({Key? key}) : super(key: key);

  @override
  State<GiftCardDetails> createState() => _GiftCardDetailsState();
}

class _GiftCardDetailsState extends State<GiftCardDetails> {
  String title = "250";
  String amount = "250";


  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final provider = Provider.of<CardController>(context);
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Myntra E-Gift Card",
          style: KTextClass.AppBarStyle,
        ),
        leading: AppBarBackButton(onclick: () {
          Navigator.pop(context);
        }),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      CustomText(
                          title: "My Dawners Coins",
                          fontWeight: FontWeight.w800,
                          color: Color(0xff000000),
                          fontSize: 20),
                      Spacer(),
                      Image.asset(
                        "assets/icons/Dbigcircle.png",
                        height: 16,
                        width: 16,
                      ),
                      CustomText(
                          title: "230",
                          fontWeight: FontWeight.w600,
                          color: Color(0xff0000000),
                          fontSize: 16)
                    ],
                  ),
                  Gap(10),
                  CustomText(
                      title: "Myntra E-Gift Card",
                      fontWeight: FontWeight.w600,
                      color: Color(0xff7B8D9E),
                      fontSize: 16),
                  Image.asset(
                    "assets/image/redeemcard.png",
                    height: h * 0.2,
                  ),
                  Gap(20),
                  Row(
                    children: [
                      CustomText(
                          title: "Amount",
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000),
                          fontSize: 14),
                    ],
                  ),
                  Gap(10),
                  Material(
                    borderRadius: BorderRadius.circular(14),
                    elevation: 5,
                    child: Container(
                        width: double.maxFinite,
                        height: 56,
                        decoration: BoxDecoration(
                          color: Color(0xffFAA53A),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomLeft,
                              // stops: [0.3,0.6,0.9],
                              colors: [
                                Color(0xffe3e7ee),
                                Color(0xffFFFFFF),
                                Color(0xffFFFFFF),
                                Color(0xffFFFFFF),
                                Color(0xffFFFFFF),
                                // Color(0xffA9ADB4),
                              ]),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: Dimentions.width15),
                                child: Container()),
                            Expanded(
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                    icon: Padding(
                                      padding: EdgeInsets.only(
                                          right: Dimentions.width10),
                                      child: SvgPicture.asset(
                                          "assets/svg_icon/fluent_triangle-down-12-filled.svg",
                                          height: 20,
                                          width: 20),
                                    ),
                                    dropdownColor: Color(0xffDCEDF9),
                                    itemHeight: kMinInteractiveDimension,
                                    style: TextStyle(
                                        color: Color(0xff0E1012),
                                        fontFamily: "NunitoSans",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12),
                                    elevation: 5,
                                    hint: Text(
                                      amount,
                                      style: ksubHeading.copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    borderRadius: BorderRadius.circular(14),
                                    items: [
                                      DropdownMenuItem(
                                        value: "250",
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.currency_rupee,
                                              size: 14,
                                            ),
                                            Text("250"),
                                          ],
                                        ),
                                      ),
                                      DropdownMenuItem(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.currency_rupee,
                                              size: 14,
                                            ),
                                            Text("250"),
                                          ],
                                        ),
                                        value: "Alternate Days",
                                      ),
                                      DropdownMenuItem(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.currency_rupee,
                                              size: 14,
                                            ),
                                            Text("250"),
                                          ],
                                        ),
                                        value: "Weekly",
                                      )
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        title = value.toString();
                                      });
                                    }),
                              ),
                            ),
                          ],
                        )),
                  ),
                  Gap(20),
                  Divider(
                    color: Colors.black,
                  ),
                  Gap(20),
                  Row(
                    children: [
                      CustomText(
                          title: "Coupon Code",
                          fontWeight: FontWeight.w700,
                          color: Color(0xff0000000),
                          fontSize: 12),
                    ],
                  ),
                  Row(
                    children: [
                      CustomText(
                          title:
                              "Give This Coupon Code To The Service Provider",
                          fontWeight: FontWeight.w600,
                          color: Color(0xff7B8D9E),
                          fontSize: 12),
                    ],
                  ),
                  Gap(10),
                InkWell(
                  onTap: (){
                    provider.isReferral=!provider.isReferral;
                  },
                  child:  provider.isReferral==false?
                  Card(
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            title: "DAWNERS#2193@500OFF",
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 20),
                        Icon(
                          Icons.copy,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ):
                Card(
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Center(
                      child: CustomText(
                          title: "Tap Button Below",
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                ),)
                  // CustomButton(text: "Tap Button Below", onclick: () {})
                ],
              ),
            ),
            Gap(15),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              color: Color(0xffFAF1DF),
              width: w,
              child: CustomText(
                  textAlign: TextAlign.center,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  title:
                      "Upgrade to higher packages and getmore exciting rewards with excellent car care"),
            ),
            Gap(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: CustomBottonPurple(
                title: "Reveal Code",
                onClick: () {},
                height: 40,
                textsize: 16,
              ),
            ),
            TextButton(
                onPressed: () {},
                child: CustomText(
                  title: "Upgrade Pack",
                  color: Color(0xff6739B7),
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ))
          ],
        ),
      ),
    );
  }
}
