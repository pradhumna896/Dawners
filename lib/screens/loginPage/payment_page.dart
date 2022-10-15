import 'dart:convert';

import 'package:dawners/feedbackScreens/service_details_one.dart';
import 'package:dawners/helper/appbar_back_button.dart';
import 'package:dawners/helper/custom_botton_purple.dart';
import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/helper/custom_text_style.dart';
import 'package:dawners/model/user_order_now_model.dart';
import 'package:dawners/screens/bottombar/bottom_app_bar.dart';
import 'package:dawners/screens/helper/api_network.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/loading_screen.dart';
import 'package:dawners/screens/loginPage/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:http/http.dart' as http;

class PaymentPage extends StatefulWidget {
  String time;
  DateTime date;

  PaymentPage({Key? key, required this.time, required this.date})
      : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool isOrderAdd = false;

  getUserOrderNow() async {
    setState(() {
      isOrderAdd = true;
    });
    Uri uri = Uri.parse(ApiNetwork.userOrderNow);
    Map<String, String> map = {
      'user_id': '1',
      'payment_type': '1',
      'date': widget.date.toString(),
      'time': widget.time,
      'grand_total': '1250'
    };
    final response = await http.post(uri, body: map);
    if (response.statusCode == 200) {
      setState(() {
        isOrderAdd = false;
      });
      UserOrderNowModel userOrder =
          UserOrderNowModel.fromJson(jsonDecode(response.body));
      if (userOrder.result == "Order Successfull") {
        setState(() {
          isOrderAdd = false;
        });
        Navigator.push(
            context, MaterialPageRoute(builder: (ctx) => ServiceDetailsOne()));
      } else {
        setState(() {
          isOrderAdd = false;
        });
      }
    } else {
      setState(() {
        isOrderAdd = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: AppBarBackButton(
          onclick: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Payment Page",
          style: TextStyle(
              color: Color(0xff0E1012),
              fontSize: Dimentions.font18,
              fontWeight: FontWeight.w700,
              fontFamily: "Montserrat"),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimentions.width25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(Dimentions.height10),
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Color(0xffFAF0DB),
                    border: Border.all(color: Color(0xffE09F1F)),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(Dimentions.height24),
                        topLeft: Radius.circular(Dimentions.height24))),
                child: Column(
                  children: [
                    Gap(Dimentions.height18),
                    Text(
                      "Payment Details",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontFamily: "Montserrat",
                          fontSize: Dimentions.font15,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline),
                    ),
                    Gap(Dimentions.height33),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: Dimentions.width20),
                      child: Row(
                        children: [
                          RichText(
                              text: TextSpan(
                                  text: "MH-14-KC-8002 -",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: Dimentions.font12,
                                      fontFamily: "Montserrat"),
                                  children: [
                                TextSpan(
                                    text: " Prime Pack",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: Dimentions.font12,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Montserrat"))
                              ])),
                          Spacer(),
                          Icon(
                            Icons.currency_rupee,
                            color: Color(0xff000000),
                            size: Dimentions.size12,
                          ),
                          Text("500",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: Dimentions.font12,
                                  fontFamily: "Montserrat"))
                        ],
                      ),
                    ),
                    Divider(
                      color: Color(0xffE09F1F),
                    ),
                    Gap(10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          RichText(
                              text: TextSpan(
                                  text: "MH-14-KC-8002 -",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 12,
                                      fontFamily: "Montserrat"),
                                  children: [
                                TextSpan(
                                    text: " Prime Pack",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Montserrat"))
                              ])),
                          Spacer(),
                          Icon(
                            Icons.currency_rupee,
                            color: Color(0xff000000),
                            size: 12,
                          ),
                          Text("500",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 12,
                                  fontFamily: "Montserrat"))
                        ],
                      ),
                    ),
                    Divider(
                      color: Color(0xffE09F1F),
                    ),
                    Gap(Dimentions.height10),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: Dimentions.width20),
                      child: Row(
                        children: [
                          RichText(
                              text: TextSpan(
                                  text: "MH-14-KC-8002 -",
                                  style: kFontSize12.copyWith(
                                      fontWeight: FontWeight.w400),
                                  children: [
                                TextSpan(
                                    text: " Prime Pack", style: kFontSize12)
                              ])),
                          Spacer(),
                          Icon(
                            Icons.currency_rupee,
                            color: Color(0xff000000),
                            size: 12,
                          ),
                          Text("500",
                              style: kFontSize12.copyWith(
                                  fontWeight: FontWeight.w400))
                        ],
                      ),
                    ),
                    Divider(
                      color: Color(0xffE09F1F),
                    ),
                    Gap(Dimentions.height10),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: Dimentions.width20),
                      child: Row(
                        children: [
                          Text("DAWNERS COIN DISCOUNT",
                              style: kFontSize12.copyWith(
                                  fontWeight: FontWeight.w400)),
                          Spacer(),
                          Text("-",
                              style: kFontSize12.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff07A605))),
                          Icon(
                            Icons.currency_rupee,
                            color: Color(0xff07A605),
                            size: Dimentions.size12,
                          ),
                          Text("100",
                              style: kFontSize12.copyWith(
                                  color: Color(0xff07A605)))
                        ],
                      ),
                    ),
                    Divider(
                      color: Color(0xffE09F1F),
                    ),
                    Gap(10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Text("COUPON DISCOUNT",
                              style: kFontSize12.copyWith(
                                  fontWeight: FontWeight.w400)),
                          Spacer(),
                          Text("-",
                              style: kFontSize12.copyWith(
                                  color: Color(0xff07A605),
                                  fontWeight: FontWeight.w400)),
                          Icon(
                            Icons.currency_rupee,
                            color: Color(0xff07A605),
                            size: 12,
                          ),
                          Text("150",
                              style: kFontSize12.copyWith(
                                  color: Color(0xff07A605)))
                        ],
                      ),
                    ),
                    Gap(Dimentions.height5)
                  ],
                ),
              ),
              Container(
                height: Dimentions.height64,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(Dimentions.height24),
                        bottomLeft: Radius.circular(Dimentions.height24)),
                    color: const Color(0xff6A3ABC)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimentions.width20),
                  child: Row(
                    children: [
                      Text("THIS MONTHS AMOUNT", style: kFontSize15),
                      Spacer(),
                      Icon(
                        Icons.currency_rupee,
                        color: const Color(0xffFFFFFF),
                        size: Dimentions.size20,
                      ),
                      Text("500",
                          style:
                              kFontSize15.copyWith(fontSize: Dimentions.font20))
                    ],
                  ),
                ),
              ),
              Gap(Dimentions.height15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimentions.width20),
                child: Row(
                  children: [
                    Text("Amount From Next Month",
                        style: kFontSize12.copyWith(
                            color: const Color(0xff6739B7),
                            fontWeight: FontWeight.w400)),
                    Spacer(),
                    Icon(
                      Icons.currency_rupee,
                      color: Color(0xff6739B7),
                      size: Dimentions.size12,
                    ),
                    Text("649",
                        style: kFontSize12.copyWith(
                            color: const Color(0xff6739B7)))
                  ],
                ),
              ),
              Gap(Dimentions.height20),
              Row(
                children: [
                  Text(
                    "Enter Coupon Code",
                    style: kFontSize12,
                  )
                ],
              ),
              Gap(Dimentions.height10),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xff614AD3), width: Dimentions.width2),
                        borderRadius: BorderRadius.circular(50)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Dimentions.width10,
                          vertical: Dimentions.height12),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xffC2B0E2),
                                borderRadius: BorderRadius.only(
                                    topLeft:
                                        Radius.circular(Dimentions.height50),
                                    bottomLeft:
                                        Radius.circular(Dimentions.height50))),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Dimentions.width8,
                                  vertical: Dimentions.height5),
                              child: Text(
                                "AUTOPAYOFFER",
                                style: kFontSize12.copyWith(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          )),
                          SizedBox(
                            width: Dimentions.width2,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xffC2B0E2),
                                borderRadius: BorderRadius.only(
                                    topRight:
                                        Radius.circular(Dimentions.height50),
                                    bottomRight:
                                        Radius.circular(Dimentions.height50))),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Dimentions.width8,
                                  vertical: Dimentions.height5),
                              child: SvgPicture.asset(
                                "assets/image/closecircle.svg",
                                height: Dimentions.height13,
                                width: Dimentions.width13,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
                  Gap(Dimentions.height5),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimentions.height50),
                        border: Border.all(
                            color: Color(0xff07A605),
                            width: Dimentions.width2)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Dimentions.width14,
                          vertical: Dimentions.height17),
                      child: Text(
                        "Coupon Applied",
                        style: kFontSize12.copyWith(
                          color: const Color(0xff07A605),
                          fontSize: Dimentions.font11,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Gap(Dimentions.height30),
              isOrderAdd
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : CustomBottonPurple(
                      title: "Subscribe",
                      textsize: Dimentions.font24,
                      onClick: () {
                        getUserOrderNow();
                      },
                      height: Dimentions.height56,
                    ),
              Gap(Dimentions.height20)
            ],
          ),
        ),
      ),
    );
  }

  void _currentCleanersPopUp(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.black87,
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return Container(
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(Dimentions.height14)),
              margin: EdgeInsets.symmetric(vertical: Dimentions.height100),
              child: Column(
                children: [
                  Image.asset(
                    "assets/image/currentcleanerimage.png",
                    fit: BoxFit.fill,
                  ),
                  Gap(Dimentions.height20),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimentions.width20),
                    child: Row(
                      children: [
                        Text(
                          "We are also known to make Local cleaner,\nProfessional",
                          style: TextStyle(
                              fontSize: Dimentions.font12,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Montserrat",
                              color: Color(0xff7B8D9E)),
                        ),
                      ],
                    ),
                  ),
                  Gap(Dimentions.height20),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimentions.width20),
                    child: Material(
                      borderRadius: BorderRadius.circular(Dimentions.height20),
                      elevation: 5,
                      child: Container(
                        height: Dimentions.height56,
                        width: double.maxFinite,
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
                          borderRadius:
                              BorderRadius.circular(Dimentions.height20),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Current Cleaners Number",
                            hintStyle: TextStyle(
                                fontSize: Dimentions.font18,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                color: Color(0xff7B8D9E)),
                            prefixIcon: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Dimentions.width15),
                              child: SvgPicture.asset(
                                  "assets/svg_icon/mobile_icon.svg"),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(Dimentions.height20),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(Dimentions.height20),
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Dimentions.height15,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimentions.width20),
                    child: CustomButton(
                        text: "Submit",
                        onclick: () {
                          _addressPopUp(context);
                        }),
                  ),
                  SizedBox(
                    height: Dimentions.height15,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimentions.width20),
                    child: Material(
                        borderRadius:
                            BorderRadius.circular(Dimentions.height14),
                        elevation: 5,
                        child: Container(
                          height: Dimentions.height56,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomLeft,
                                // stops: [0.3,0.6,0.9],
                                colors: [
                                  Color(0xffC1C1C1),
                                  Color(0xffFFFFFF),
                                  Color(0xffFFFFFF),
                                  Color(0xffFFFFFF),
                                  Color(0xffFFFFFF),
                                  Color(0xffC1C1C1),
                                ]),
                            borderRadius:
                                BorderRadius.circular(Dimentions.height14),
                          ),
                          child: Center(
                              child: Text(
                            "I Dont Have One",
                            style: TextStyle(
                                fontSize: Dimentions.font24,
                                fontWeight: FontWeight.w800,
                                fontFamily: "Montserrat",
                                color: Color(0xffFE8E00)),
                          )),
                        )),
                  ),
                  Gap(Dimentions.height5)
                ],
              ));
        });
  }

  void _addressPopUp(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        isScrollControlled: true,
        builder: (BuildContext bc) {
          return Container(
              decoration: BoxDecoration(
                  color: Color(0xb0000000),
                  borderRadius: BorderRadius.circular(Dimentions.height14)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/image/addresspopup.png"),
                  Gap(Dimentions.height30),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimentions.width15),
                    child: CustomButton(
                        text: "Great,Thanks",
                        onclick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const LoadingScreen()));
                        }),
                  ),
                  SizedBox(
                    height: Dimentions.height10,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimentions.width20),
                    child: Material(
                        borderRadius:
                            BorderRadius.circular(Dimentions.height14),
                        elevation: 5,
                        child: Container(
                          height: Dimentions.height56,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomLeft,
                                // stops: [0.3,0.6,0.9],
                                colors: [
                                  Color(0xffC1C1C1),
                                  Color(0xffFFFFFF),
                                  Color(0xffFFFFFF),
                                  Color(0xffFFFFFF),
                                  Color(0xffFFFFFF),
                                  Color(0xffC1C1C1),
                                ]),
                            borderRadius:
                                BorderRadius.circular(Dimentions.height14),
                          ),
                          child: Center(
                              child: Text(
                            "Review Details",
                            style: TextStyle(
                                fontSize: Dimentions.font24,
                                fontWeight: FontWeight.w800,
                                fontFamily: "Montserrat",
                                color: Color(0xffFE8E00)),
                          )),
                        )),
                  ),
                ],
              ));
        });
  }
}
