import 'package:dawners/helper/appbar_back_button.dart';
import 'package:dawners/helper/custom_botton_purple.dart';
import 'package:dawners/helper/custom_text_style.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/loginPage/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: AppBarBackButton(onclick: () { Navigator.pop(context); },),
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
                      padding: EdgeInsets.symmetric(horizontal:Dimentions.width20),
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
                      padding: EdgeInsets.symmetric(horizontal: Dimentions.width20),
                      child: Row(
                        children: [
                          RichText(
                              text: TextSpan(
                                  text: "MH-14-KC-8002 -",
                                  style: kFontSize12.copyWith(fontWeight: FontWeight.w400),
                                  children: [
                                TextSpan(
                                    text: " Prime Pack",
                                    style: kFontSize12)
                              ])),
                          Spacer(),
                          Icon(
                            Icons.currency_rupee,
                            color: Color(0xff000000),
                            size: 12,
                          ),
                          Text("500",
                              style: kFontSize12.copyWith(fontWeight: FontWeight.w400))
                        ],
                      ),
                    ),
                    Divider(
                      color: Color(0xffE09F1F),
                    ),
                    Gap(Dimentions.height10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimentions.width20),
                      child: Row(
                        children: [
                          Text("DAWNERS COIN DISCOUNT",
                              style:kFontSize12.copyWith(fontWeight: FontWeight.w400)),
                          Spacer(),
                          Text("-",
                              style: kFontSize12.copyWith(fontWeight: FontWeight.w400,color: Color(0xff07A605))),
                          Icon(
                            Icons.currency_rupee,
                            color: Color(0xff07A605),
                            size: Dimentions.size12,
                          ),
                          Text("100",
                              style: kFontSize12.copyWith(color: Color(0xff07A605)))
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
                              style: kFontSize12.copyWith(fontWeight: FontWeight.w400)),
                          Spacer(),
                          Text("-",
                              style:kFontSize12.copyWith(color: Color(0xff07A605),fontWeight: FontWeight.w400)),
                          Icon(
                            Icons.currency_rupee,
                            color: Color(0xff07A605),
                            size: 12,
                          ),
                          Text("150",
                              style:kFontSize12.copyWith(color: Color(0xff07A605)))
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
                      Text("THIS MONTHS AMOUNT",
                          style: kFontSize15),
                      Spacer(),
                      Icon(
                        Icons.currency_rupee,
                        color: const Color(0xffFFFFFF),
                        size: Dimentions.size20,
                      ),
                      Text("500",
                          style:kFontSize15.copyWith(fontSize: Dimentions.font20))
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
                        style:kFontSize12.copyWith(color: const Color(0xff6739B7),fontWeight: FontWeight.w400)),
                    Spacer(),
                    Icon(
                      Icons.currency_rupee,
                      color: Color(0xff6739B7),
                      size: Dimentions.size12,
                    ),
                    Text("649",
                        style: kFontSize12.copyWith(color: const Color(0xff6739B7)))
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
                        border: Border.all(color: Color(0xff614AD3), width: Dimentions.width2),
                        borderRadius: BorderRadius.circular(50)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Dimentions.width10, vertical: Dimentions.height12),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xffC2B0E2),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(Dimentions.height50),
                                    bottomLeft: Radius.circular(Dimentions.height50))),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Dimentions.width8, vertical: Dimentions.height5),
                              child: Text(
                                "AUTOPAYOFFER",
                                style: kFontSize12.copyWith( color: Color(0xffFFFFFF),
                                  fontSize: 11,),
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
                                    topRight: Radius.circular(Dimentions.height50),
                                    bottomRight: Radius.circular(Dimentions.height50))),
                            child: Padding(
                              padding:EdgeInsets.symmetric(
                                  horizontal: Dimentions.width8, vertical: Dimentions.height5),
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
                        borderRadius: BorderRadius.circular(Dimentions.height50),
                        border: Border.all(color: Color(0xff07A605), width: Dimentions.width2)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Dimentions.width14, vertical: Dimentions.height17),
                      child: Text(
                        "Coupon Applied",
                        style: kFontSize12.copyWith(color: const Color(0xff07A605),
                          fontSize: Dimentions.font11,),
                      ),
                    ),
                  ),
                ],
              ),
              Gap(Dimentions.height30),
              CustomBottonPurple(
                title: "Subscribe",textsize: Dimentions.font24,
                onClick: () {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx)=>PaymentMethod()));
                }, height: Dimentions.height56,
              ),
              Gap(Dimentions.height20)
            ],
          ),
        ),
      ),
    );
  }
}
