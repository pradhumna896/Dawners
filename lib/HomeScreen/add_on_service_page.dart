import 'package:dawners/HomeScreen/booking_summary.dart';
import 'package:dawners/HomeScreen/for_service_requiset_set_up_payment.dart';
import 'package:dawners/helper/box_shadow.dart';
import 'package:dawners/helper/custom_botton_purple.dart';
import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/helper/custom_white_botton.dart';
import 'package:dawners/screens/package_details.dart';
import 'package:dawners/screens/set_up_payments.dart';
import 'package:dawners/widget/my_package_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class AddOnServicePage extends StatefulWidget {
 AddOnServicePage({Key? key}) : super(key: key);

  @override
  State<AddOnServicePage> createState() => _AddOnServicePageState();
}

class _AddOnServicePageState extends State<AddOnServicePage> {
  int selectIndex=0;

  @override
  Widget build(BuildContext context) {
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
          "Dont Miss Out",
          style: TextStyle(
              color: Color(0xff0E1012),
              fontSize: 18,
              fontWeight: FontWeight.w700,
              fontFamily: "Montserrat"),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: RichText(
                  text: TextSpan(
                      text: "Check Out All Our Amazing Services -",
                      style: TextStyle(
                          color: Color(0xff0E1012),
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Montserrat"),
                      children: [
                    TextSpan(
                        text: "Just For You",
                        style: TextStyle(
                            color: Color(0xff0E1012),
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            fontFamily: "Montserrat"))
                  ])),
            ),
            Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38),
              child: TabBar(

                labelStyle: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w800,
                  fontSize: 12,
                  color: Color(0xffFFFFFF)
                ),
                onTap: (val){
                  setState(() {
                    selectIndex=val;

                  });
                },
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Color(0xff6737B7),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),

                ),

                  tabs:[
                Tab(child: Container(
                  height: 40,
                  width: 128,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: selectIndex== 0 ?Color(0xff6739B7):Color(0xffC2B0E2)

                  ),

                  child: const Center(child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text("Subscription Offers",textAlign: TextAlign.center,),
                  )),),),
                Tab(child: Container(
                  height: 40,
                    width: 128,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: selectIndex== 1 ?Color(0xff6739B7):Color(0xffC2B0E2)
                    ),
                  child: const Center(child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text("One Time Offers",textAlign: TextAlign.center,),
                  )),),)
              ]),
            ),
            Gap(10),
            Expanded(
                child:TabBarView(children: [


                  _card(),
                  Container()

                ],)),
            Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: CustomBottonPurple(title: "Upgrade Pack", onClick: () {
                _settingModalBottomSheet(context);
              }, height: 56,),
            ),
            Gap(11),
            TextButton(
                onPressed: () {

                  Navigator.push(context, MaterialPageRoute(builder: (ctx)=>BookingSummary()));
                },
                child: Text(
                  "Keep Current Pack",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Montserrat",
                      color: Color(0xff6739B7)),
                )),
            Gap(10)
          ],
        ),
      ),
    );
  }

  Widget _card(){
    return ListView.builder(
      itemCount: 2,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
      return InkWell(

        onTap: (){
          Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => PackageDetails()));
        },
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14)
          ),
          margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 16,
                    width: 128,
                    decoration: BoxDecoration(
                        color: Color(0xff07A605),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(14),
                            bottomRight: Radius.circular(14))),
                    child: Center(
                      child: Text(
                        "Recommended",
                        style: GoogleFonts.montserrat(
                            color: Color(0xffFFFFFF),
                            fontSize: 10,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Gap(15),

                  Expanded(
                    child: RichText(text: TextSpan(text: "153291" ,style: GoogleFonts.montserrat(
                        color: Color(0xff07A605),
                        fontSize: 9,
                        fontWeight: FontWeight.w400),children: [TextSpan(text: "happy Subscribers in your area",style: GoogleFonts.montserrat(
                        color: Color(0xff000000),
                        fontSize: 9,
                        fontWeight: FontWeight.w400))]
                    ),),
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
              Gap(5),
              Row(
                children: [
                  SizedBox(
                    width: 14,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Basic Pack",
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: Color(0xff000000)),
                        ),

                        Text(
                          "We all love Sparkling Cars",
                          style: GoogleFonts.montserrat(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        ),
                        Gap(5),
                        Text("-Everything in Basic Pack and",
                            style: GoogleFonts.montserrat(
                                decoration: TextDecoration.underline,
                                color: Color(0xff7B8D9E),
                                fontWeight: FontWeight.w600,
                                fontSize: 10)),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, top: 5),
                          child: Column(
                            children: List.generate(
                                5,
                                    (index) => Row(
                                  children: [
                                    Container(
                                      height: 2,
                                      width: 2,
                                      decoration: BoxDecoration(
                                          color:
                                          Color(0xff7B8D9E),
                                          borderRadius:
                                          BorderRadius
                                              .circular(3)),
                                    ),
                                    Gap(5),
                                    Text(
                                      "Exterior Foam Wash - 4 times",
                                      style: GoogleFonts.montserrat(
                                          color: Color(0xff7B8D9E),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 9),
                                    ),
                                  ],
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [

                      Text("6 Services",style: GoogleFonts.montserrat(
                          color: Color(0xff7B8D9E),
                          fontSize: 12,
                          fontWeight: FontWeight.w700)),
                      Gap(16),
                      Container(
                        height: 102,
                        width: 84,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                width: 84,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/image/carclean.png"),fit: BoxFit.fill
                                    ),
                                    color: Color(0xffE0D7F0),
                                    borderRadius:
                                    BorderRadius.circular(14)),
                                height: 93,

                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                margin:
                                EdgeInsets.symmetric(horizontal: 15),
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Color(0xffFE8E00),
                                    borderRadius:
                                    BorderRadius.circular(50)),
                                child:Center(
                                  child: Text(
                                    "ADD",
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xffFFFFFF),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const Gap(10)
                ],
              ),
              Row(
                children: [
                  Spacer(),
                  Text(
                    "view more",
                    style: GoogleFonts.montserrat(
                        color: Color(0xff6739B7),
                        fontSize: 8,
                        fontWeight: FontWeight.w600),
                  ),
                  SvgPicture.asset(
                      "assets/svg/fluent_arrow-circle-right-32-regular.svg"),
                  Gap(94)
                ],
              ),
              Gap(2),
              Container(
                height: 29,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xff80C2B0E2),
                          Color(0xff006739B7),
                          Color(0xff006739B7)
                        ])),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(10),
                    Icon(
                      Icons.currency_rupee,
                      color: Color(0xff141023),
                      size: 6,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "599",
                          style: GoogleFonts.montserrat(
                              decoration: TextDecoration.lineThrough,
                              color: Color(0xff141023),
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        ),
                        Gap(2)
                      ],
                    ),
                    Gap(5),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          color: Color(0xff6739B7),
                          size: 8,
                        ),
                        Gap(10)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "500",
                          style: GoogleFonts.montserrat(
                              color: Color(0xff6739B7),
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        Gap(2)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "first month",
                          style: GoogleFonts.montserrat(
                              color: Color(0xff000000),
                              fontSize: 8,
                              fontWeight: FontWeight.w400),
                        ),
                        Gap(5)
                      ],
                    ),
                    Gap(38),
                    Row(children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.currency_rupee,
                            color: Color(0xff141023),
                            size: 6,
                          ),

                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "500",
                            style: GoogleFonts.montserrat(
                                color: Color(0xff141023),
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),

                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "from 01/08/22",
                            style: GoogleFonts.montserrat(
                                color: Color(0xff000000),
                                fontSize: 8,
                                fontWeight: FontWeight.w400),
                          ),

                        ],
                      )
                    ],)
                  ],
                ),
              ),
              Gap(9),
              Row(
                children: [
                  Gap(9),
                  Text(
                    "Limited Period Offer",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 8,
                        color: Color(0xff000000)),
                  ),
                  Gap(20),
                  Expanded(
                      child: Container(
                        height: 16,
                        decoration: const BoxDecoration(
                            color: Color(0xff009DC7),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(14),
                                bottomRight: Radius.circular(14))),
                        child: Center(
                          child: RichText(textAlign: TextAlign.center,
                            text: TextSpan(
                                text: "1 Month",
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 8,
                                    color: Color(0xffFFFFFF)),
                                children: [
                                  TextSpan(
                                      text: " Free premium add on trial",
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 12,
                                          color: Color(0xffFFFFFF)))
                                ]),
                          ),
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      );
    },

    );
  }

  void _settingModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        isScrollControlled: true,
        builder: (BuildContext bc) {
          return Container(
              height: MediaQuery.of(context).size.height * 0.85,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(14)),
              margin: EdgeInsets.only(bottom: 50),
              child: Column(
                children: [
                  Container(
                    child: Image.asset("assets/image/popupcarimage.png"),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: CustomWhiteButton(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        Text(
                          "Your Vehicles ",
                          style: TextStyle(
                              color: Color(0xff7B8D9E),
                              fontSize: 12,
                              fontFamily: "Montserrat-ExtraBold",
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 115,
                    child: Row(
                      children: [
                        Flexible(
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemCount: 4,
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, index) {
                                  return Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child: index == 3
                                        ? Container(
                                      width: 66,
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 66,
                                            width: 66,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Color(
                                                        0xff6739B7)),
                                                borderRadius:
                                                BorderRadius.circular(
                                                    66)),
                                            child: Padding(
                                              padding:
                                              const EdgeInsets.all(
                                                  8.0),
                                              child: Image.asset(
                                                  "assets/image/fluent_add-square-multiple-16-regular.png"),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text( "Add\nMore",
                                            textAlign: TextAlign.center,

                                            style: TextStyle(
                                                color: Color(0xff6739B7),
                                                fontSize: 12,
                                                fontFamily:
                                                "Montserrat-Regular"),
                                          )
                                        ],
                                      ),
                                    )
                                        : Container(
                                      width: 71,
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 80,
                                            child: Stack(children: [
                                              Positioned(
                                                top: 5,
                                                right: 5,
                                                child: Container(
                                                  height: 66,
                                                  width: 66,
                                                  decoration: BoxDecoration(
                                                      border: index == 0
                                                          ? Border.all(
                                                          color: Color(
                                                              0xff6739B7))
                                                          : Border(),
                                                      color: Color(
                                                          0xffF0EBF8),
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          70)),
                                                  child: Center(
                                                    child: Image.asset(
                                                      "assets/icons/popupcirclecarimage.png",
                                                      height: 39,
                                                      width: 62,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                top: 0,
                                                right: 0,
                                                child: Visibility(
                                                  visible: index == 0
                                                      ? true
                                                      : false,
                                                  child: Image.asset(
                                                    "assets/icons/platinumpremium.png",
                                                    height: 30,
                                                    width: 30,
                                                  ),
                                                ),
                                              )
                                            ]),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text("MH-14-KC 2932",
                                            textAlign: TextAlign.center,

                                            style: TextStyle(
                                                color: Color(0xff6739B7),
                                                fontSize: 12,
                                                fontFamily:
                                                "Montserrat-Regular"),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                })),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: CustomButton(
                        text: "Add To All Vehicles", onclick: () {}),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Divider(
                    color: Color(0xff07A605),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        Text(
                          "TOTAL",
                          style: TextStyle(
                              color: Color(0xff07A605),
                              fontFamily: "Montserrat-Regular",
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                        Spacer(),
                        Icon(
                          Icons.currency_rupee,
                          color: Color(0xff07A605),
                          size: 20,
                        ),
                        Text(
                          "1500",
                          style: TextStyle(
                              color: Color(0xff07A605),
                              fontFamily: "Montserrat-Regular",
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xff07A605),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: CustomBottonPurple(onClick: () { _congratulationPopUp(context); }, title: 'Continue', height: 56,),
                  ),
                ],
              ));
        });
  }

  void _congratulationPopUp(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        isScrollControlled: true,
        builder: (BuildContext bc) {
          return Container(
              height: MediaQuery.of(context).size.height * 0.85,
              decoration: BoxDecoration(
                   color: Color(0xb0000000),
                  borderRadius: BorderRadius.circular(14)),

              child: Column(
                children: [
                  Image.asset("assets/image/greatchoice.png"),

                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomButton(text: "Great,Thanks", onclick: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>ForServiceRequisetSetUpPayment()));
                    }),
                  ),
                  SizedBox(height: 10,),
                  Padding(

                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Material(
                        borderRadius: BorderRadius.circular(14),
                        elevation: 5,
                        child: Container(
                          height: 56,
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
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Center(child: Text("Review Details",style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat-ExtraBold",
                              color: Color(0xffFE8E00)),)),
                        )),
                  ),
                  Spacer()
                ],
              ));
        });
  }
}

/*
 Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff6739B7)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 23, vertical: 4),
                      child: Text(
                        "Subscription Offers",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontFamily: "Montserrat-Bold",
                            fontWeight: FontWeight.w800,
                            fontSize: 12),
                      ),
                    ),
                  ),
                ),
                Gap(28),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xffC2B0E2)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 23, vertical: 4),
                      child: Text(
                        "One Time Offers",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontFamily: "Montserrat-Bold",
                            fontWeight: FontWeight.w800,
                            fontSize: 12),
                      ),
                    ),
                  ),
                )
 */
/*
             // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 27),
                  //   child: ListView.builder(
                  //       itemCount: 2,
                  //       scrollDirection: Axis.vertical,
                  //       physics: BouncingScrollPhysics(),
                  //       shrinkWrap: true,
                  //       itemBuilder: (BuildContext context, index) {
                  //         return Padding(
                  //           padding: const EdgeInsets.only(bottom: 20),
                  //           child: InkWell(
                  //             onTap: () {
                  //               Navigator.push(
                  //                   context,
                  //                   MaterialPageRoute(
                  //                       builder: (ctx) => PackageDetails()));
                  //             },
                  //             child: Stack(children: [
                  //               Container(
                  //                 width: MediaQuery.of(context).size.width,
                  //                 height: MediaQuery.of(context).size.height * 0.3,
                  //                 decoration: BoxDecoration(
                  //                     color: Color(0xffFFFFFF),
                  //                     borderRadius: BorderRadius.circular(14),
                  //                     boxShadow: kBoxShadow),
                  //                 child: Padding(
                  //                   padding: const EdgeInsets.symmetric(
                  //                       horizontal: 14, vertical: 10),
                  //                   child: Column(
                  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //                     children: [
                  //                       Row(
                  //                         crossAxisAlignment: CrossAxisAlignment.start,
                  //                         mainAxisAlignment:
                  //                         MainAxisAlignment.spaceBetween,
                  //                         children: [
                  //                           Column(
                  //                             mainAxisAlignment:
                  //                             MainAxisAlignment.start,
                  //                             crossAxisAlignment:
                  //                             CrossAxisAlignment.start,
                  //                             children: [
                  //                               SizedBox(
                  //                                 height: 10,
                  //                               ),
                  //                               Text(
                  //                                 "Standerd Pack",
                  //                                 style: TextStyle(
                  //                                     fontSize: 15,
                  //                                     fontWeight: FontWeight.bold,
                  //                                     color: Color(0xff000000),
                  //                                     fontFamily: "Montserrat-Bold"),
                  //                               ),
                  //                               SizedBox(
                  //                                 height: 7,
                  //                               ),
                  //                               Text(
                  //                                 "-The Regular Daily Service ",
                  //                                 style: TextStyle(
                  //                                     fontSize: 10,
                  //                                     decoration:
                  //                                     TextDecoration.underline,
                  //                                     color: Color(0xff7B8D9E),
                  //                                     fontFamily: "Montserrat-Bold"),
                  //                               ),
                  //                               SizedBox(
                  //                                 height: 8,
                  //                               ),
                  //                               Text(
                  //                                 "exterior cleaning - daily  ",
                  //                                 style: TextStyle(
                  //                                     fontSize: 9,
                  //                                     color: Color(0xff7B8D9E),
                  //                                     fontFamily: "Montserrat-Bold"),
                  //                               ),
                  //                               Text(
                  //                                 "interior cleaning - 2 times ",
                  //                                 style: TextStyle(
                  //                                     fontSize: 9,
                  //                                     color: Color(0xff7B8D9E),
                  //                                     fontFamily: "Montserrat-Bold"),
                  //                               )
                  //                             ],
                  //                           ),
                  //                           Column(
                  //                             crossAxisAlignment:
                  //                             CrossAxisAlignment.end,
                  //                             children: [
                  //                               RichText(
                  //                                 text: TextSpan(
                  //                                     text: "153251",
                  //                                     style: TextStyle(
                  //                                         color: Color(0xff07A605),
                  //                                         fontSize: 9,
                  //                                         fontFamily:
                  //                                         "Montserrat-Bold"),
                  //                                     children: [
                  //                                       TextSpan(
                  //                                         text:
                  //                                         " Happy Subscribers In Your Area",
                  //                                         style: TextStyle(
                  //                                             color: Color(0xff000000),
                  //                                             fontSize: 9,
                  //                                             fontFamily:
                  //                                             "Montserrat-Regular"),
                  //                                       )
                  //                                     ]),
                  //                               ),
                  //                               SizedBox(
                  //                                 height: 8,
                  //                               ),
                  //                               Row(
                  //                                 children: [
                  //                                   Text(
                  //                                     "2 Services",
                  //                                     style: TextStyle(
                  //                                         fontSize: 12,
                  //                                         fontWeight: FontWeight.bold,
                  //                                         color: Color(0xff7B8D9E),
                  //                                         fontFamily:
                  //                                         "Montserrat-Bold"),
                  //                                   ),
                  //                                   SizedBox(
                  //                                     width: 15,
                  //                                   )
                  //                                 ],
                  //                               ),
                  //                               SizedBox(
                  //                                 height: 8,
                  //                               ),
                  //                               Container(
                  //                                 width: 90,
                  //                                 height: 110,
                  //                                 child: LayoutBuilder(
                  //                                     builder: (context, constrains) {
                  //                                       double innerheight =
                  //                                           constrains.maxHeight;
                  //                                       double innerwidth =
                  //                                           constrains.maxWidth;
                  //                                       return Stack(
                  //                                         children: [
                  //                                           Positioned(
                  //                                               left: 0,
                  //                                               right: 0,
                  //                                               top: 0,
                  //                                               child: Container(
                  //                                                 height:
                  //                                                 innerheight * 0.80,
                  //                                                 decoration:
                  //                                                 BoxDecoration(),
                  //                                                 child: Image.asset(
                  //                                                     "assets/image/carclean.png",
                  //                                                     fit: BoxFit.fill),
                  //                                               )),
                  //                                           Positioned(
                  //                                             left: 0,
                  //                                             right: 0,
                  //                                             bottom: 0,
                  //                                             child: Container(
                  //                                               child: Padding(
                  //                                                 padding: const EdgeInsets
                  //                                                     .symmetric(
                  //                                                   horizontal: 10,
                  //                                                 ),
                  //                                                 child: ElevatedButton(
                  //                                                     style: ButtonStyle(
                  //                                                         elevation:
                  //                                                         MaterialStateProperty
                  //                                                             .all(10),
                  //                                                         // maximumSize: MaterialStateProperty.all(),
                  //                                                         shape: MaterialStateProperty.all(
                  //                                                             RoundedRectangleBorder(
                  //                                                                 borderRadius:
                  //                                                                 BorderRadius.circular(
                  //                                                                     14))),
                  //                                                         backgroundColor:
                  //                                                         MaterialStateProperty
                  //                                                             .all(Color(
                  //                                                             0xffFE8E00))),
                  //                                                     onPressed: () {
                  //                                                       // Navigator.push(context, MaterialPageRoute(builder: (ctx)=>StepProgress()));
                  //                                                     },
                  //                                                     child: Center(
                  //                                                       child: Text(
                  //                                                         "ADD",
                  //                                                         style: TextStyle(
                  //                                                             color: Color(
                  //                                                                 0xffFFFFFF),
                  //                                                             fontSize: 11,
                  //                                                             fontWeight:
                  //                                                             FontWeight
                  //                                                                 .w700,
                  //                                                             fontFamily:
                  //                                                             "Montserrat"),
                  //                                                       ),
                  //                                                     )),
                  //                                               ),
                  //                                             ),
                  //                                           ),
                  //                                           Positioned(
                  //                                               right: 0,
                  //                                               top: 0,
                  //                                               child: Image.asset(
                  //                                                   "assets/image/star.png")),
                  //                                         ],
                  //                                       );
                  //                                     }),
                  //                               )
                  //                             ],
                  //                           )
                  //                         ],
                  //                       ),
                  //                       Row(
                  //                         children: [
                  //                           Text(
                  //                             "Starts From",
                  //                             style: TextStyle(
                  //                                 fontSize: 9,
                  //                                 color: Color(0xff6739B7)),
                  //                           ),
                  //                           Spacer(),
                  //                           Container(
                  //                             child: Row(
                  //                               mainAxisAlignment:
                  //                               MainAxisAlignment.center,
                  //                               children: [
                  //                                 Container(
                  //                                   height: 2,
                  //                                   width: 50,
                  //                                 ),
                  //                                 InkWell(
                  //                                   onTap: () {},
                  //                                   child: Text(
                  //                                     "Veiw More",
                  //                                     style: TextStyle(
                  //                                         color: Color(0xff6739B7),
                  //                                         fontSize: 8,
                  //                                         fontFamily:
                  //                                         "Montserrat-SemiBold"),
                  //                                   ),
                  //                                 ),
                  //                                 SvgPicture.asset(
                  //                                     "assets/svg/fluent_arrow-circle-right-32-regular.svg")
                  //                               ],
                  //                             ),
                  //                           ),
                  //                           Spacer()
                  //                         ],
                  //                       ),
                  //                       Container(
                  //                           height: 29,
                  //                           width: double.maxFinite,
                  //                           decoration: BoxDecoration(
                  //                               gradient: LinearGradient(stops: [
                  //                                 0.3,
                  //                                 0.6,
                  //                                 0.9
                  //                               ], colors: [
                  //                                 Color.fromRGBO(194, 176, 226, 0.5),
                  //                                 Color.fromRGBO(103, 57, 183, 0),
                  //                                 Color.fromRGBO(103, 57, 183, 0),
                  //                               ])),
                  //                           child: Row(
                  //                             crossAxisAlignment:
                  //                             CrossAxisAlignment.start,
                  //                             children: [
                  //                               Container(
                  //                                 child: Padding(
                  //                                   padding: const EdgeInsets.only(
                  //                                       left: 10, top: 2, right: 5),
                  //                                   child: Row(
                  //                                     crossAxisAlignment:
                  //                                     CrossAxisAlignment.start,
                  //                                     children: [
                  //                                       Icon(Icons.currency_rupee,
                  //                                           size: 8,
                  //                                           color: Color(0xff141023)),
                  //                                       Text(
                  //                                         "750",
                  //                                         style: TextStyle(
                  //                                             color: Color(0xff141023),
                  //                                             fontSize: 10,
                  //                                             fontFamily: "Montserrat",
                  //                                             decoration: TextDecoration
                  //                                                 .lineThrough),
                  //                                       )
                  //                                     ],
                  //                                   ),
                  //                                 ),
                  //                               ),
                  //                               Container(
                  //                                 child: Padding(
                  //                                   padding:
                  //                                   const EdgeInsets.only(top: 7),
                  //                                   child: Row(
                  //                                     crossAxisAlignment:
                  //                                     CrossAxisAlignment.start,
                  //                                     children: [
                  //                                       Icon(Icons.currency_rupee,
                  //                                           size: 12,
                  //                                           color: Color(0xff6739B7)),
                  //                                       Text(
                  //                                         "500",
                  //                                         style: TextStyle(
                  //                                             color: Color(0xff6739B7),
                  //                                             fontWeight:
                  //                                             FontWeight.bold,
                  //                                             fontSize: 20,
                  //                                             fontFamily:
                  //                                             "Montserrat-Bold"),
                  //                                       )
                  //                                     ],
                  //                                   ),
                  //                                 ),
                  //                               ),
                  //                               SizedBox(
                  //                                 width: 3,
                  //                               ),
                  //                               Container(
                  //                                 height: 24,
                  //                                 child: Row(
                  //                                   crossAxisAlignment:
                  //                                   CrossAxisAlignment.end,
                  //                                   children: [
                  //                                     Text(
                  //                                       "First Month",
                  //                                       textAlign: TextAlign.end,
                  //                                       style: TextStyle(
                  //                                           color: Color(0xff000000),
                  //                                           fontSize: 8,
                  //                                           fontFamily: "Montserrat"),
                  //                                     ),
                  //                                   ],
                  //                                 ),
                  //                               ),
                  //                               SizedBox(
                  //                                 width: 30,
                  //                               ),
                  //                               Container(
                  //                                 child: Padding(
                  //                                   padding:
                  //                                   const EdgeInsets.only(top: 10),
                  //                                   child: Row(
                  //                                     crossAxisAlignment:
                  //                                     CrossAxisAlignment.start,
                  //                                     children: [
                  //                                       Icon(Icons.currency_rupee,
                  //                                           size: 8,
                  //                                           color: Color(0xff141023)),
                  //                                       Text(
                  //                                         "649",
                  //                                         style: TextStyle(
                  //                                             color: Color(0xff141023),
                  //                                             fontWeight:
                  //                                             FontWeight.bold,
                  //                                             fontSize: 12,
                  //                                             fontFamily:
                  //                                             "Montserrat-SemiBold"),
                  //                                       )
                  //                                     ],
                  //                                   ),
                  //                                 ),
                  //                               ),
                  //                               SizedBox(
                  //                                 width: 3,
                  //                               ),
                  //                               Container(
                  //                                 height: 24,
                  //                                 child: Row(
                  //                                   crossAxisAlignment:
                  //                                   CrossAxisAlignment.end,
                  //                                   children: [
                  //                                     Text(
                  //                                       "From 01/08/22",
                  //                                       textAlign: TextAlign.end,
                  //                                       style: TextStyle(
                  //                                           color: Color(0xff000000),
                  //                                           fontSize: 8,
                  //                                           fontFamily: "Montserrat"),
                  //                                     ),
                  //                                   ],
                  //                                 ),
                  //                               ),
                  //                             ],
                  //                           )
                  //
                  //
                  //                       ),
                  //                       SizedBox(
                  //                         height: 7,
                  //                       )
                  //                     ],
                  //                   ),
                  //                 ),
                  //               ),
                  //               Positioned(
                  //                   top: 0,
                  //                   left: 0,
                  //                   child: Container(
                  //                     decoration: BoxDecoration(
                  //                         color: index == 1
                  //                             ? Color(0xff6739B7)
                  //                             : Color(0xff07A605),
                  //                         borderRadius: BorderRadius.only(
                  //                             topLeft: Radius.circular(14),
                  //                             bottomRight: Radius.circular(14))),
                  //                     child: Padding(
                  //                       padding: const EdgeInsets.symmetric(
                  //                           horizontal: 24, vertical: 2),
                  //                       child: Text(
                  //                         "Recommended",
                  //                         style: TextStyle(
                  //                             fontSize: 10,
                  //                             color: Color(0xffFFFFFF),
                  //                             fontFamily: "Montserrat-Bold",
                  //                             fontWeight: FontWeight.bold),
                  //                       ),
                  //                     ),
                  //                   )),
                  //               Positioned(
                  //                   bottom: 0,
                  //                   right: 0,
                  //                   child: Container(
                  //                     decoration: BoxDecoration(
                  //                         color: Color(0xff009DC7),
                  //                         borderRadius: BorderRadius.only(
                  //                             topLeft: Radius.circular(14),
                  //                             bottomRight: Radius.circular(14))),
                  //                     child: Padding(
                  //                         padding: const EdgeInsets.symmetric(
                  //                             horizontal: 24, vertical: 2),
                  //                         child: RichText(
                  //                             text: TextSpan(
                  //                                 text: "1 Month",
                  //                                 style: TextStyle(
                  //                                   fontSize: 10,
                  //                                   color: Color(0xffFFFFFF),
                  //                                   fontFamily: "Montserrat",
                  //                                 ),
                  //                                 children: [
                  //                                   TextSpan(
                  //                                     text: " Free Premium Add On Trial",
                  //                                     style: TextStyle(
                  //                                         fontSize: 10,
                  //                                         color: Color(0xffFFFFFF),
                  //                                         fontFamily:
                  //                                         "Montserrat-ExtraBold",
                  //                                         fontWeight: FontWeight.bold),
                  //                                   )
                  //                                 ]))),
                  //                   )),
                  //               Positioned(
                  //                   left: 9,
                  //                   bottom: 0,
                  //                   child: Text(
                  //                     "Limited Period Offer",
                  //                     style: TextStyle(
                  //                         color: Color(0xff000000),
                  //                         fontWeight: FontWeight.bold,
                  //                         fontSize: 8,
                  //                         fontFamily: "Montserrat-SemiBold"),
                  //                   )),
                  //               Positioned(
                  //                 right: 10,
                  //                 top: 5,
                  //                 child: Text(""),
                  //               )
                  //             ]),
                  //           ),
                  //         );
                  //       }),
                  // ),
 */