import 'package:dawners/HomeScreen/booking_summary.dart';
import 'package:dawners/helper/custom_botton_purple.dart';
import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/helper/ktext_class.dart';
// import 'package:dawners/model/set_up_payment_dot_slider.dart';
import 'package:dawners/provider/app_controller.dart';
import 'package:dawners/provider/card_controller.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/loginPage/payment_page.dart';
import 'package:dawners/switch_screen.dart';
import 'package:dawners/widget/set_up_payment_dot_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class ForServiceRequisetSetUpPayment extends StatelessWidget {
  ForServiceRequisetSetUpPayment({Key? key}) : super(key: key);





  @override
  Widget build(BuildContext context) {
    final data = Provider.of<AppController>(context);
    final dataForSwitch = Provider.of<CardController>(context);
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
            "Set Up Payment",
            style:KTextClass.AppBarStyle
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                  "Earn Cashback & Rewards On Every Payment!",
                  style: ksubHeading.copyWith(fontWeight: FontWeight.w700,color: Color(0xff0E1012),fontSize: 20)
              ),
            ),
            Gap(20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: Text(
                    "Exciting Offers For You",
                    style: TextStyle(
                        color: Color(0xff7B8D9E),
                        fontFamily: "Montserrat",
                        fontSize: 12),
                  ),
                ),
              ],
            ),
            Container(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * 0.3,
              child: PageView.builder(
                onPageChanged: (index) {
                  data.paymentCurrentIndexPageviewJackpot(index);
                },
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return LayoutBuilder(builder: (BuildContext, constrains) {
                    return Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset("assets/image/jackpotimage.png",fit: BoxFit.fill,),
                        Positioned(
                            right: 5,
                            top: 5,
                            child: SvgPicture.asset(
                                "assets/svg_icon/fluent_text-period-asterisk-20-filled.svg")),
                        Positioned(
                          left: 21,
                          bottom: 61,
                          child: Container(
                            height: 35,
                            width: 135,
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
                                  ]),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Center(
                                child: Text(
                                  "Subscribe Now",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 14,
                                      fontFamily: "NunitoSans"),
                                )),
                          ),
                        )
                      ],
                    );
                  });
                },
              ),
            ),
            SetUpPaymentSliderDotWidget(length: 3,),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Select Mode of Payment",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Montserrat-Bold",
                        fontWeight: FontWeight.bold,
                        color: Color(0xff7B8D9E)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffFF512F),
                        borderRadius: BorderRadius.circular(50)),
                    child: Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: RichText(
                        text: TextSpan(
                            text: "For Limited Customers-",
                            style: TextStyle(
                                fontSize: 10,
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat-ExtraBold"),
                            children: [
                              TextSpan(
                                  text: " GRAB NOW!",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xffFFFFFF),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Montserrat"))
                            ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Gap(Dimentions.height20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Container(
                height: 120,
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    double innerheight = constraints.maxHeight;
                    double innerwidth = constraints.maxWidth;
                    return Stack(
                      children: [
                        Positioned(
                            left: 0,
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: innerheight * 0.9,
                              width: innerwidth,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xff6739B7), width: 3),
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
                                    ]),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 5,
                                      child: Container(
                                        child: Padding(
                                          padding:
                                          const EdgeInsets.only(left: 11),
                                          child: Column(
                                            children: [
                                              Gap(17),
                                              Container(
                                                child: Row(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      "Autopay",
                                                      style: TextStyle(
                                                          color:
                                                          Color(0xffFFFFFF),
                                                          fontSize: 24,
                                                          fontFamily:
                                                          "Montserrat-ExtraBold",
                                                          fontWeight:
                                                          FontWeight.bold),
                                                    ),
                                                    Text(
                                                      "(month end)",
                                                      style: TextStyle(
                                                          color:
                                                          Color(0xffFFFFFF),
                                                          fontFamily:
                                                          "Montserrat-Regular",
                                                          fontSize: 12),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Gap(6),
                                              Row(
                                                children: [
                                                  Text(
                                                    "1999",
                                                    style: TextStyle(
                                                        color: Color(0xffFFFFFF),
                                                        decoration: TextDecoration
                                                            .lineThrough,
                                                        fontFamily:
                                                        "Montserrat-Regular",
                                                        fontSize: 12),
                                                  )
                                                ],
                                              ),
                                              Container(
                                                child: Row(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "1500",
                                                      style: TextStyle(
                                                          color:
                                                          Color(0xffFFFFFF),
                                                          fontFamily:
                                                          "Montserrat-Regular",
                                                          fontSize: 24),
                                                    ),
                                                    Icon(
                                                      Icons.currency_rupee,
                                                      color: Color(0xffFFFFFF),
                                                      size: 12,
                                                    ),
                                                    Column(
                                                      children: [
                                                        SizedBox(
                                                          height: 12,
                                                        ),
                                                        Text(
                                                          "This Month",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xffFFFFFF),
                                                              fontFamily:
                                                              "Montserrat-Regular",
                                                              fontSize: 12),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Gap(6)
                                            ],
                                          ),
                                        ),
                                      )),
                                  Expanded(
                                      flex: 4,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Gap(20),
                                            SvgPicture.asset(
                                                "assets/svg_icon/fluent_shield-checkmark-28-filled.svg"),
                                            Text(
                                              "Free Cancellation\nanytime",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color(0xffFFFFFF),
                                                  fontSize: 8,
                                                  fontFamily:
                                                  "Montserrat-ExtraBold",
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Gap(6),
                                            Row(
                                              children: [
                                                Text(
                                                  "1999",
                                                  style: TextStyle(
                                                      color: Color(0xffFFFFFF),
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      fontFamily:
                                                      "Montserrat-Regular",
                                                      fontSize: 12),
                                                )
                                              ],
                                            ),
                                            Container(
                                              child: Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "1799",
                                                    style: TextStyle(
                                                        color: Color(0xffFFFFFF),
                                                        fontFamily:
                                                        "Montserrat-Regular",
                                                        fontSize: 24),
                                                  ),
                                                  Icon(
                                                    Icons.currency_rupee,
                                                    color: Color(0xffFFFFFF),
                                                    size: 12,
                                                  ),
                                                  Column(
                                                    children: [
                                                      SizedBox(
                                                        height: 12,
                                                      ),
                                                      Text(
                                                        "From 01/01/2020",
                                                        style: TextStyle(
                                                            color:
                                                            Color(0xffFFFFFF),
                                                            fontFamily:
                                                            "Montserrat-Regular",
                                                            fontSize: 8),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ))
                                ],
                              ),
                            )),
                        Positioned(
                          left: 5,
                          top: 4,
                          right: 5,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Color(0xff07A605),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: RichText(
                                        text: TextSpan(
                                            text: "1 Month",
                                            style: TextStyle(
                                                color: Color(0xffFFFFFF),
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: "Montserrat"),
                                            children: [
                                              TextSpan(
                                                  text: " Free Premium Add On",
                                                  style: TextStyle(
                                                    color: Color(0xffFFFFFF),
                                                    fontSize: 10,
                                                    fontFamily:
                                                    "Montserrat",
                                                    fontWeight: FontWeight.w800,
                                                  )),
                                            ])),
                                  ),
                                ),
                              ),
                              Gap(5),
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(0xff6739B7),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 4),
                                  child: RichText(
                                      text: TextSpan(
                                          text: "40% off",
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Montserrat"),
                                          children: [
                                            TextSpan(
                                                text: " Every Month",
                                                style: TextStyle(
                                                  color: Color(0xffFFFFFF),
                                                  fontSize: 10,
                                                  fontFamily:
                                                  "Montserrat",
                                                  fontWeight: FontWeight.w800,
                                                )),
                                          ])),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Gap(Dimentions.height10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Pay Manually?",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 12,
                      fontFamily: "NunitoSans-SemiBold"),
                ),
                Gap(Dimentions.width10),
               SwitchScreen(),
                Gap(Dimentions.width30)
              ],
            ),
            Gap(Dimentions.height10),
            Visibility(
              visible: dataForSwitch.isSwitch?true:false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19),
                child: Container(
                  height: 120,
                  child: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      double innerheight = constraints.maxHeight;
                      double innerwidth = constraints.maxWidth;
                      return Stack(
                        children: [
                          Positioned(
                              left: 0,
                              bottom:0,
                              right: 0,
                              child: Container(
                                height: innerheight * 0.9,
                                width: innerwidth,
                                decoration:BoxDecoration(
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
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 5,
                                        child: Container(
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(left: 11),
                                            child: Column(
                                              children: [
                                                Gap(17),
                                                Container(
                                                  child: Row(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        "Manual Payment",
                                                        style: TextStyle(
                                                            color:
                                                            Color(0xff6739B7),
                                                            fontSize: 24,
                                                            fontFamily:
                                                            "Montserrat-ExtraBold",
                                                            fontWeight:
                                                            FontWeight.bold),
                                                      ),
                                                      Text(
                                                        "(month end)",
                                                        style: TextStyle(
                                                            color:
                                                            Color(0xff6739B7),
                                                            fontFamily:
                                                            "Montserrat-Regular",
                                                            fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Gap(6),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "1999",
                                                      style: TextStyle(
                                                          color: Color(0xff6739B7),
                                                          decoration: TextDecoration
                                                              .lineThrough,
                                                          fontFamily:
                                                          "Montserrat-Regular",
                                                          fontSize: 12),
                                                    )
                                                  ],
                                                ),
                                                Container(
                                                  child: Row(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "1799",
                                                        style: TextStyle(
                                                            color:
                                                            Color(0xff6739B7),
                                                            fontFamily:
                                                            "Montserrat-Regular",
                                                            fontSize: 24),
                                                      ),
                                                      Icon(
                                                        Icons.currency_rupee,
                                                        color: Color(0xff6739B7),
                                                        size: 12,
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            height: 12,
                                                          ),
                                                          Text(
                                                            "This Month",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff6739B7),
                                                                fontFamily:
                                                                "Montserrat",
                                                                fontWeight: FontWeight.w400,
                                                                fontSize: 10),
                                                          ),
                                                        ],
                                                      ),
                                                      Spacer(),
                                                      Text(
                                                        "1999",
                                                        style: TextStyle(
                                                            color:
                                                            Color(0xff6739B7),
                                                            fontFamily:
                                                            "Montserrat-Regular",
                                                            fontSize: 24),
                                                      ),
                                                      Icon(
                                                        Icons.currency_rupee,
                                                        color: Color(0xff6739B7),
                                                        size: 12,
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            height: 12,
                                                          ),
                                                          Text(
                                                            "From 01/01/2020",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff6739B7),
                                                                fontFamily:
                                                                "Montserrat",
                                                                fontWeight: FontWeight.w400,
                                                                fontSize: 8),
                                                          ),
                                                        ],
                                                      ),
                                                      Gap(10)
                                                    ],
                                                  ),
                                                ),
                                                Gap(6)
                                              ],
                                            ),
                                          ),
                                        )),
                                    // Expanded(
                                    //     flex: 4,
                                    //     child: Container(
                                    //       child: Column(
                                    //         children: [
                                    //           Gap(20),
                                    //           SvgPicture.asset(
                                    //               "assets/svg_icon/fluent_shield-checkmark-28-filled.svg"),
                                    //           Text(
                                    //             "Free Cancellation\nanytime",
                                    //             textAlign: TextAlign.center,
                                    //             style: TextStyle(
                                    //                 color: Color(0xffFFFFFF),
                                    //                 fontSize: 8,
                                    //                 fontFamily:
                                    //                 "Montserrat-ExtraBold",
                                    //                 fontWeight: FontWeight.bold),
                                    //           ),
                                    //           Gap(6),
                                    //           Row(
                                    //             children: [
                                    //               Text(
                                    //                 "1999",
                                    //                 style: TextStyle(
                                    //                     color: Color(0xffFFFFFF),
                                    //                     decoration: TextDecoration
                                    //                         .lineThrough,
                                    //                     fontFamily:
                                    //                     "Montserrat-Regular",
                                    //                     fontSize: 12),
                                    //               )
                                    //             ],
                                    //           ),
                                    //           Container(
                                    //             child: Row(
                                    //               crossAxisAlignment:
                                    //               CrossAxisAlignment.start,
                                    //               children: [
                                    //                 Text(
                                    //                   "1799",
                                    //                   style: TextStyle(
                                    //                       color: Color(0xffFFFFFF),
                                    //                       fontFamily:
                                    //                       "Montserrat-Regular",
                                    //                       fontSize: 24),
                                    //                 ),
                                    //                 Icon(
                                    //                   Icons.currency_rupee,
                                    //                   color: Color(0xffFFFFFF),
                                    //                   size: 12,
                                    //                 ),
                                    //                 Column(
                                    //                   children: [
                                    //                     SizedBox(
                                    //                       height: 12,
                                    //                     ),
                                    //                     Text(
                                    //                       "From 01/01/2020",
                                    //                       style: TextStyle(
                                    //                           color:
                                    //                           Color(0xffFFFFFF),
                                    //                           fontFamily:
                                    //                           "Montserrat-Regular",
                                    //                           fontSize: 8),
                                    //                     ),
                                    //                   ],
                                    //                 ),
                                    //               ],
                                    //             ),
                                    //           ),
                                    //         ],
                                    //       ),
                                    //     ))
                                  ],
                                ),
                              )),
                          Positioned(
                            left: 5,
                            top: 4,
                            right: 5,
                            child: Row(
                              children: [
                                Expanded(

                                  child: Container(
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFD1102),
                                        borderRadius: BorderRadius.circular(50)),
                                    child: Center(
                                      child: RichText(
                                          text: TextSpan(
                                              text: "Payment Stress",
                                              style: TextStyle(
                                                color: Color(0xffFFFFFF),
                                                fontSize: 10,
                                                fontFamily:
                                                "Montserrat",
                                                fontWeight: FontWeight.w800,),
                                              children: [
                                                TextSpan(
                                                    text: "  Every Month",
                                                    style: TextStyle(
                                                      color: Color(0xffFFFFFF),
                                                      fontSize: 10,
                                                      fontFamily:
                                                      "Montserrat",
                                                      fontWeight: FontWeight.w500

                                                    )),
                                              ])),
                                    ),
                                  ),
                                ),
                                Gap(5),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff6739B7),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    child: RichText(
                                        text: TextSpan(
                                            text: "40% off",
                                            style: TextStyle(
                                                color: Color(0xffFFFFFF),
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: "Montserrat"),
                                            children: [
                                              TextSpan(
                                                  text: " 1 Month",
                                                  style: TextStyle(
                                                    color: Color(0xffFFFFFF),
                                                    fontSize: 10,
                                                    fontFamily:
                                                    "Montserrat",
                                                    fontWeight: FontWeight.w800,
                                                  )),
                                            ])),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
            Gap(Dimentions.height10),
            Divider(
              height: 5,
              color: Color(0xff07A605),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "TOTAL",
                    style: TextStyle(
                        color: Color(0xff07A605),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.currency_rupee_sharp,
                          color: Color(0xff07A605),
                          size: 12.5,
                        ),
                        Text(
                          "1500",
                          style: TextStyle(
                              color: Color(0xff07A605),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 5,
              color: Color(0xff07A605),
            ),
            SizedBox(height: Dimentions.height20,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: CustomBottonPurple(title: 'Continue', height: 56, onClick: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>BookingSummary()));
              },),
            ),
            SizedBox(height: Dimentions.height10,)


          ],
        ),
      ),
    );
  }
}
