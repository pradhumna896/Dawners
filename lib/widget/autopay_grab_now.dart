import 'package:dawners/provider/card_controller.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class AutoPayGrabNow extends StatelessWidget {
  const AutoPayGrabNow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataForSwitch = Provider.of<CardController>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimentions.width20),
      height: Dimentions.height130,
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
                          color: Color(0xff6739B7), width: 2),
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
                      borderRadius: BorderRadius.circular(Dimentions.height14),
                    ),
                    child: Padding(
                      padding:EdgeInsets.symmetric(horizontal: Dimentions.width10),
                      child: Column(


                          children: [
                            SizedBox(height: Dimentions.height8,),
                            Expanded(

                                child: Container(
                                  child: Column(
                                    children: [

                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                          children: [
                                            Expanded(child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "Autopay",
                                                  style: TextStyle(
                                                      color:
                                                      Color(0xffFFFFFF),
                                                      fontSize: Dimentions.font24,
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
                                                      fontSize: Dimentions.font12),
                                                ),

                                              ],)),
                                            Container(
                                              child: Column(
                                                children: [


                                                  SvgPicture.asset(
                                                    "assets/svg_icon/fluent_shield-checkmark-28-filled.svg",
                                                    height: Dimentions.height30,width: Dimentions.width30,),
                                                  Text(
                                                    "Free Cancellation\nanytime",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Color(0xffFFFFFF),
                                                        fontSize: Dimentions.font8,
                                                        fontFamily:
                                                        "Montserrat",
                                                        fontWeight: FontWeight.w800),
                                                  ),



                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Gap(Dimentions.height5),


                                      Row(
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "1500",
                                                style: TextStyle(
                                                    color:
                                                    Color(0xffFFFFFF),
                                                    fontFamily:
                                                    "Montserrat",
                                                    fontSize: Dimentions.font24),
                                              ),
                                              Icon(
                                                Icons.currency_rupee,
                                                color: Color(0xffFFFFFF),
                                                size: Dimentions.font12,
                                              ),
                                              Column(
                                                children: [
                                                  SizedBox(
                                                    height:Dimentions.height10,
                                                  ),
                                                  Text(
                                                    "This Month",
                                                    style: TextStyle(
                                                        color: Color(
                                                            0xffFFFFFF),
                                                        fontFamily:
                                                        "Montserrat",
                                                        fontSize: Dimentions.font12),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Expanded(

                                              child: Container(
                                                child: Column(children: [
                                                  Divider(color: Colors.white,height: 2,),
                                                  RichText(
                                                      text: TextSpan(
                                                          text: "100%",
                                                          style: TextStyle(
                                                              color: Color(0xffFFFFFF),
                                                              fontSize: Dimentions.font8,
                                                              fontWeight: FontWeight.w400,
                                                              fontFamily: "Montserrat"),
                                                          children: [
                                                            TextSpan(
                                                                text: " off on Premium Add On-1st Month",
                                                                style: TextStyle(
                                                                    color: Color(0xffFFFFFF),
                                                                    fontSize:Dimentions.font8,
                                                                    fontFamily:
                                                                    "Montserrat",
                                                                    fontWeight: FontWeight.w700

                                                                )),
                                                          ])),
                                                  Divider(color: Colors.white,height: 2,)
                                                ],),
                                              ))
                                        ],
                                      ),


                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text("Grab Now", style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: Dimentions.font10,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "Montserrat"),),
                                          Gap(Dimentions.height10),
                                          SizedBox(
                                            height: Dimentions.height18,
                                            width: Dimentions.width44,
                                            child: FlutterSwitch(

                                              inactiveColor: Color(0xffFFFFFF),
                                              activeColor: Color(0xff6739B7),
                                              toggleColor: Color(0xffD9D9D9),

                                              toggleSize: Dimentions.height18,
                                              padding: 0.0,
                                              onToggle: (value) {
                                                dataForSwitch.isAutopayToggle(false);
                                              }, value: dataForSwitch.isAutopaySwitch,),
                                          )
                                        ],)
                                    ],
                                  ),
                                )),

                          ]),
                    ),
                  )),
              Positioned(
                left: Dimentions.width5,
                top: Dimentions.height4,
                right: Dimentions.width5,
                child: Row(
                  children: [
                    Expanded(

                      child: Container(
                        height: Dimentions.height20,
                        decoration: BoxDecoration(
                            color: Color(0xff07A605),
                            borderRadius: BorderRadius.circular(Dimentions.height56)),
                        child: Center(
                          child: RichText(
                              text: TextSpan(
                                  text: "Cashback & Rewards",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: Dimentions.font10,
                                      fontWeight: FontWeight.w800,
                                      fontFamily: "Montserrat"),
                                  children: [
                                    TextSpan(
                                        text: " Every Month",
                                        style: TextStyle(
                                            color: Color(0xffFFFFFF),
                                            fontSize: Dimentions.font10,
                                            fontFamily:
                                            "Montserrat",
                                            fontWeight: FontWeight.w500

                                        )),
                                  ])),
                        ),
                      ),
                    ),
                    Gap(Dimentions.width5),
                    Container(
                      height:  Dimentions.height20,
                      decoration: BoxDecoration(
                          color: Color(0xff6739B7),
                          borderRadius: BorderRadius.circular(Dimentions.height56)),
                      child: Padding(
                        padding:EdgeInsets.symmetric(horizontal: Dimentions.width10),
                        child: Center(
                          child: RichText(
                              text: TextSpan(
                                  text: "Special",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize:Dimentions.font10,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Montserrat"),

                                  children: [
                                    TextSpan(
                                        text: " Prices",
                                        style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontSize:Dimentions.font10,
                                          fontFamily:
                                          "Montserrat",
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ])),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}