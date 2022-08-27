import 'package:dawners/helper/appbar_back_button.dart';
import 'package:dawners/helper/custom_botton_purple.dart';
import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/helper/custom_text_style.dart';
import 'package:dawners/helper/ktext_class.dart';
// import 'package:dawners/model/set_up_payment_dot_slider.dart';
import 'package:dawners/provider/app_controller.dart';
import 'package:dawners/provider/card_controller.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/loginPage/payment_page.dart';
import 'package:dawners/switch_screen.dart';
import 'package:dawners/widget/banner_widget.dart';
import 'package:dawners/widget/set_up_payment_dot_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class SetUpPayment extends StatelessWidget {
  SetUpPayment({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final data = Provider.of<AppController>(context);
    final dataForSwitch = Provider.of<CardController>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: AppBarBackButton(onclick: () { Navigator.pop(context); },),
        title: Text("Set Up Payment", style: KTextClass.AppBarStyle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimentions.width20),
              child: Text("Earn Cashback & Rewards On Every Payment!",
                  style: ksubHeading.copyWith(
                      fontWeight: FontWeight.w700,
                      color: Color(0xff0E1012),
                      fontSize: Dimentions.font20)),
            ),
            Gap(Dimentions.height10),
            Row(
              children: [
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: Dimentions.width18),
                  child: Text(
                    "Exciting Offers For You",
                    style: kFontSize12.copyWith(color: Color(0xff7B8D9E)),
                  ),
                ),
              ],
            ),
            Gap(Dimentions.height10),
            BannerWidget(),
            SizedBox(
              height: Dimentions.height10,
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 5, vertical: 5),
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
            Gap(Dimentions.height10),
            AutopayContainer(),
            Gap(Dimentions.height10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Pay Manually?",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: "NunitoSans"),

                ),
                Gap(10),
                // Switch(
                //   activeColor: Colors.blueAccent,
                //   value: dataForSwitch.isSwitch,
                //   onChanged: (value) {
                //     dataForSwitch.isToggleSwitch(false);
                //   },
                // )
                SwitchScreen(),
                Gap(Dimentions.height30),
              ],
            ),
            Gap(Dimentions.height10),
            Visibility(
              visible: dataForSwitch.isSwitch?true:false,
              child: ManualPayment(),
            ),
          Gap(Dimentions.height10),
            const Divider(
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
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700),
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
                              fontFamily:"Montserrat",
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              height: 5,
              color: Color(0xff07A605),
            ),
            SizedBox(
              height: Dimentions.height20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: CustomBottonPurple(
                height: 56,
                title: 'Continue',
                onClick: () {     Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => PaymentPage())); },),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}



class AutopayContainer extends StatelessWidget {
  const AutopayContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: Container(
        height: 120,

        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double innerheight = constraints.maxHeight;
            double innerwidth = constraints.maxWidth;
            return Stack(
              fit: StackFit.expand,
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
                              flex: 3,
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
                                                  fontSize: 22,
                                                  fontFamily:
                                                      "Montserrat",
                                                  fontWeight:
                                                      FontWeight.w800),
                                            ),
                                            Text(
                                              "(month end)",
                                              style: TextStyle(
                                                  color:
                                                      Color(0xffFFFFFF),
                                                  fontFamily:
                                                      "Montserrat",
                                                  fontWeight:
                                                      FontWeight.w400,
                                                  fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ),
                                      Gap(6),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "1999",
                                            style: TextStyle(
                                                color:
                                                    Color(0xffFFFFFF),
                                                decoration:
                                                    TextDecoration
                                                        .lineThrough,
                                                fontFamily:
                                                    "Montserrat",
                                                fontWeight:
                                                    FontWeight.w400,
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
                            flex: 2,
                            child: Container(
                              child: Column(
                                children: [
                                  Gap(12),
                                  SvgPicture.asset(
                                      "assets/svg_icon/fluent_shield-checkmark-28-filled.svg",height: 30,width: 30,),
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
                                      ),
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
                                              fontFamily: "Montserrat",
                                              fontSize: 15),
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
                                                      "Montserrat",
                                                  fontSize: 8),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 4),
                            child: RichText(
                                text: TextSpan(
                                    text: "1 Month",
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        fontFamily:
                                            "Montserrat"),
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
                                      fontFamily:
                                          "Montserrat"),
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
    );
  }
}

class ManualPayment extends StatelessWidget {
  const ManualPayment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: Container(
        height: 120,
        child: LayoutBuilder(
          builder:
              (BuildContext context, BoxConstraints constraints) {
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
                                          children: const [
                                            Text(
                                              "Manual Payment",
                                              style: TextStyle(
                                                  color: Color(
                                                      0xff6739B7),
                                                  fontSize: 24,
                                                  fontFamily:
                                                      "Montserrat",
                                                  fontWeight:
                                                      FontWeight
                                                          .w800),
                                            ),
                                            Text(
                                              "(month end)",
                                              style: TextStyle(
                                                  color: Color(
                                                      0xff6739B7),
                                                  fontFamily:
                                                      "Montserrat",
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
                                                color:
                                                    Color(0xff6739B7),
                                                decoration:
                                                    TextDecoration
                                                        .lineThrough,
                                                fontFamily:
                                                    "Montserrat",
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .start,
                                          children: [
                                            Text(
                                              "1799",
                                              style: TextStyle(
                                                  color: Color(
                                                      0xff6739B7),
                                                  fontFamily:
                                                      "Montserrat",
                                                  fontSize: 24),
                                            ),
                                            Icon(
                                              Icons.currency_rupee,
                                              color:
                                                  Color(0xff6739B7),
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
                                                      fontWeight:
                                                          FontWeight
                                                              .w400,
                                                      fontSize: 10),
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            Text(
                                              "1999",
                                              style: TextStyle(
                                                  color: Color(
                                                      0xff6739B7),
                                                  fontFamily:
                                                      "Montserrat-Regular",
                                                  fontSize: 24),
                                            ),
                                            Icon(
                                              Icons.currency_rupee,
                                              color:
                                                  Color(0xff6739B7),
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
                                                      fontWeight:
                                                          FontWeight
                                                              .w400,
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
                              borderRadius:
                                  BorderRadius.circular(50)),
                          child: Center(
                            child: RichText(
                                text: TextSpan(
                                    text: "Payment Stress",
                                    style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 10,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w800,
                                    ),
                                    children: [
                                  TextSpan(
                                      text: "  Every Month",
                                      style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        fontFamily:
                                            "Montserrat",
                                      )),
                                ])),
                          ),
                        ),
                      ),
                      Gap(5),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff6739B7),
                            borderRadius:
                                BorderRadius.circular(50)),
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
                                      fontFamily:
                                          "Montserrat"),
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
    );
  }
}
