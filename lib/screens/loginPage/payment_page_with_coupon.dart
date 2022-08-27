import 'package:dawners/helper/custom_botton_purple.dart';
import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/helper/ktext_class.dart';
// import 'package:dawners/model/payment_page_slider.dart';
import 'package:dawners/provider/card_controller.dart';
import 'package:dawners/screens/loginPage/payment_method.dart';
import 'package:dawners/widget/payment_page_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class PaymentPageWithCoupon extends StatelessWidget {
  PaymentPageWithCoupon({Key? key}) : super(key: key);

  List value = [
    1,
    2,
    3,
  ];

  @override
  Widget build(BuildContext context) {
    final data= Provider.of<CardController>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(16),
              child: Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffD7DEEA), width: 1),
                    borderRadius: BorderRadius.circular(16)),
                child: Center(
                    child: SvgPicture.asset(
                  "assets/image/backarrow.svg",
                  color: Color(0xff7B8D9E),
                )),
              ),
            ),
          ),
        ),
        title: Text(
          "Payment Page",
          style: KTextClass.AppBarStyle
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(10),
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Color(0xffFAF0DB),
                    border: Border.all(color: Color(0xffE09F1F)),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24),
                        topLeft: Radius.circular(24))),
                child: Column(
                  children: [
                    Gap(19),
                    Text(
                      "Payment Details",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontFamily: "Montserrat",
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline),
                    ),
                    Gap(35),
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
                                      fontWeight: FontWeight.w400,
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
                                  fontWeight: FontWeight.w400,
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
                                      fontWeight: FontWeight.w400,
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
                                  fontWeight: FontWeight.w400,
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
                                      fontWeight: FontWeight.w400,
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
                                  fontFamily: "Montserrat-Regula"))
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
                          Text("DAWNERS COIN DISCOUNT",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Montserrat")),
                          Spacer(),
                          Text("-",
                              style: TextStyle(
                                  color: Color(0xff07A605),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Montserrat")),
                          Icon(
                            Icons.currency_rupee,
                            color: Color(0xff07A605),
                            size: 12,
                          ),
                          Text("100",
                              style: TextStyle(
                                  color: Color(0xff07A605),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
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
                        children: const [
                          Text("COUPON DISCOUNT",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Montserrat")),
                          Spacer(),
                          Text("-",
                              style: TextStyle(
                                  color: Color(0xff07A605),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Montserrat")),
                          Icon(
                            Icons.currency_rupee,
                            color: Color(0xff07A605),
                            size: 12,
                          ),
                          Text("150",
                              style: TextStyle(
                                  color: Color(0xff07A605),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Montserrat"),

                          )
                        ],
                      ),
                    ),
                    Gap(5)
                  ],
                ),
              ),
              Container(
                height: 64,
                width: double.maxFinite,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(24),
                        bottomLeft: Radius.circular(24)),
                    color: Color(0xff6A3ABC)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text("THIS MONTHS AMOUNT",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 15,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700)),
                      Spacer(),
                      Icon(
                        Icons.currency_rupee,
                        color: Color(0xffFFFFFF),
                        size: 20,
                      ),
                      Text("500",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 20,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700))
                    ],
                  ),
                ),
              ),
              Gap(15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Row(
                  children: [
                    Text("Amount From Next Month",
                        style: TextStyle(
                          color: Color(0xff6739B7),
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400
                        )),
                    Spacer(),
                    Icon(
                      Icons.currency_rupee,
                      color: Color(0xff6739B7),
                      size: 12,
                    ),
                    Text("649",
                        style: TextStyle(
                            color: Color(0xff6739B7),
                            fontSize: 12,
                            fontFamily: "Montserrat-Bold",
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Gap(20),
              Row(
                children: [
                  Text(
                    "Enter Coupon Code",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Montserrat",
                        fontSize: 12),
                  )
                ],
              ),
              Gap(11),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 41,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff614AD3), width: 2),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                        child: Text(
                      "Get Amazing Offers",
                      style: TextStyle(
                          color: Color(0xff6739B7),
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          fontFamily: "Montserrat"),
                    )),
                  )),
                  Gap(5),
                  Container(
                    height: 41,
                    padding: EdgeInsets.symmetric(horizontal: 56),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff07A605)),
                    child: Center(
                      child: Text(
                        "Find",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Montserrat"),
                      ),
                    ),
                  ),

                ],
              ),
              Gap(20),
              Row(

                children: [
                  Container(
                    height: 40.33,
                    width: 40.33,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: SvgPicture.asset(
                      "assets/svg_icon/bx_checkbox-checked.svg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 29,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xffC2B0E2)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 21),
                        child: Row(children: [
                          Text(
                            "PRIME PACKAGE",
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontFamily: "Montserrat",
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                          Gap(10),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 15,
                            color: Color(0xffFFFFFF),
                          )
                        ]),
                      )),
                  Spacer(),
                  Container(

                      height:29,
                      decoration: BoxDecoration(
                        color: Color(0xffFAA53A),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomLeft,
                            // stops: [0.3,0.6,0.9],
                            colors: [

                              Color(0xffFAA53A),
                              Color(0xffFE8E00),
                              Color(0xffFE8E00),
                              Color(0xffC06B00),


                            ]
                        ),
                        borderRadius: BorderRadius.circular(14),

                      ),
                      child:Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 21),
                          child: Text("Add", style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Montserrat"
                          ),),
                        ),
                      )

                  ),
                ],
              ),
              Gap(20),
             Container(
               width: double.maxFinite,
               height: 120,

                child: PageView.builder(
                  padEnds: false,
                  onPageChanged: (index){
                    data.cardIndexPagePayment(index);

                  },


                  controller: PageController(

                    keepPage: false
                  ),
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,

                    itemBuilder: (BuildContext context ,index){
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Stack(

                            fit: StackFit.expand,
                            children:[ Image.asset("assets/image/primepackageimage.png"),
                          Positioned(
                              top:0,
                              right:0,
                              child: SvgPicture.asset("assets/svg_icon/fluent_text-period-asterisk-20-filled.svg"))]),
                      );
                    }),
              ),
              PaymentPagedDotSlider(),
              Gap(20),
              CustomBottonPurple(
                title: "Subscribe",
                onClick: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => PaymentMethod()));
                }, height: 56,
              ),
              Gap(20)

            ],
          ),
        ),
      ),
    );
  }
}
