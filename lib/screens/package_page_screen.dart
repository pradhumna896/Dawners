import 'package:dawners/helper/appbar_back_button.dart';
import 'package:dawners/helper/box_shadow.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/screens/package_details.dart';
import 'package:dawners/screens/upgrade_package.dart';
import 'package:dawners/widget/my_package_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class PackagePageScreen extends StatefulWidget {
  const PackagePageScreen({Key? key}) : super(key: key);

  @override
  State<PackagePageScreen> createState() => _PackagePageScreenState();
}

class _PackagePageScreenState extends State<PackagePageScreen> {
  bool status = false;
  bool _switchvalue = true;
  String title="Daily";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: AppBarBackButton(
          onclick: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          "Grab the best",
          style: KTextClass.AppBarStyle,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Column(
                children: [
                  Gap(20),
                  Center(
                    child: Text(
                      "Enjoy Premium Services At Unbelievable Prices ",
                      style: TextStyle(
                          color: Color(0xff0E1012),
                          fontSize: 24,
                          fontFamily: "Montserrat"),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Packages Specially Curated for you",
                        style: TextStyle(
                            color: Color(0xff7B8D9E),
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700,
                            fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 129,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffDCEDF9)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 3),
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Fortuner",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff0E1012),
                                    fontFamily: "NunitoSans"),
                              ),
                              Image.asset("assets/icons/dropdown.png")
                            ],
                          ),
                        ),
                      ),
                      Container(

                        child: Row(
                          children: [
                            DropdownButtonHideUnderline(
                              child: DropdownButton(
                                  dropdownColor: Color(0xffDCEDF9),
                                   itemHeight: kMinInteractiveDimension,
                                   style: TextStyle(color: Color(0xff0E1012),
                                       fontFamily: "NunitoSans",
                                       fontWeight: FontWeight.w600,fontSize: 12),

                                   elevation: 5,
                                   hint: Text(title,style: TextStyle(color: Color(0xff0E1012),fontFamily: "NunitoSans",fontWeight: FontWeight.w600,fontSize: 12),),
                                  borderRadius: BorderRadius.circular(14),
                                  items: const [
                                    DropdownMenuItem(
                                      value: "Daily",
                                      child: Text("Daily"),
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Alternate Days"),
                                      value: "Alternate Days",
                                    ),

                                    DropdownMenuItem(
                                      child: Text("Weekly"),
                                      value: "Weekly",
                                    )
                                  ],
                                  onChanged: (value) {

                                     setState(() {
                                       title=value.toString();

                                     });
                                  }),
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ),
            Expanded(

              child: MyPackageCard(),
            )
          ],
        ),
      ),
    );
  }
}



/*
ListView.builder(
                          itemCount: 3,
                          scrollDirection: Axis.vertical,
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: InkWell(
                                onTap: () {
                                  if (index == 0) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (ctx) =>
                                                UpgradePackage()));
                                  } else if (index == 1) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (ctx) =>
                                                PackageDetails()));
                                  } else {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (ctx) =>
                                                PackageDetails()));
                                  }
                                },
                                child: Stack(children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 230,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(14),
                                        boxShadow: kBoxShadow),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 14,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Visibility(
                                                      visible: index == 0
                                                          ? false
                                                          : true,
                                                      child: const Gap(10)),
                                                  const Text(
                                                    "Basic Pack",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Color(0xff000000),
                                                        fontFamily:
                                                            "Montserrat-Bold"),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    "-The Regular Daily Service ",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                        color:
                                                            Color(0xff7B8D9E),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontFamily:
                                                            "Montserrat"),
                                                  ),
                                                  SizedBox(
                                                    height: 7,
                                                  ),
                                                  Text(
                                                    "exterior cleaning - daily  ",
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color:
                                                            Color(0xff7B8D9E),
                                                        fontFamily:
                                                            "Montserrat-Bold"),
                                                  ),
                                                  Text(
                                                    "interior cleaning - 2 times ",
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color:
                                                            Color(0xff7B8D9E),
                                                        fontFamily:
                                                            "Montserrat-Bold"),
                                                  ),
                                                  Text(
                                                    "interior cleaning - 2 times ",
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color:
                                                            Color(0xff7B8D9E),
                                                        fontFamily:
                                                            "Montserrat-Bold"),
                                                  ),
                                                  Text(
                                                    "interior cleaning - 2 times ",
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color:
                                                            Color(0xff7B8D9E),
                                                        fontFamily:
                                                            "Montserrat-Bold"),
                                                  ),
                                                  Text(
                                                    "interior cleaning - 2 times ",
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color:
                                                            Color(0xff7B8D9E),
                                                        fontFamily:
                                                            "Montserrat-Bold"),
                                                  ),
                                                  Text(
                                                    "interior cleaning - 2 times ",
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color:
                                                            Color(0xff7B8D9E),
                                                        fontFamily:
                                                            "Montserrat-Bold"),
                                                  ),
                                                ],
                                              ),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Visibility(
                                                      visible: index == 0
                                                          ? false
                                                          : true,
                                                      child: RichText(
                                                        text: TextSpan(
                                                            text: "153251",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff07A605),
                                                                fontSize: 9,
                                                                fontFamily:
                                                                    "Montserrat-Bold"),
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    " Happy Subscribers In Your Area",
                                                                style: TextStyle(
                                                                    color: Color(
                                                                        0xff000000),
                                                                    fontSize:
                                                                        9,
                                                                    fontFamily:
                                                                        "Montserrat-Regular"),
                                                              )
                                                            ]),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .end,
                                                      children: [
                                                        Text(
                                                          "2 Services",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: Color(
                                                                  0xff7B8D9E),
                                                              fontFamily:
                                                                  "Montserrat"),
                                                        ),
                                                        SizedBox(
                                                          width: 15,
                                                        )
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Container(
                                                      width: 90,
                                                      height: 110,
                                                      child: LayoutBuilder(
                                                          builder: (context,
                                                              constrains) {
                                                        double innerheight =
                                                            constrains
                                                                .maxHeight;
                                                        double innerwidth =
                                                            constrains
                                                                .maxWidth;
                                                        return Stack(
                                                          children: [
                                                            Positioned(
                                                                left: 0,
                                                                right: 0,
                                                                top: 0,
                                                                child:
                                                                    Container(
                                                                  height:
                                                                      innerheight *
                                                                          0.80,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Image.asset(
                                                                      "assets/image/carclean.png",
                                                                      fit: BoxFit
                                                                          .fill),
                                                                )),
                                                            Positioned(
                                                              left: 0,
                                                              right: 0,
                                                              bottom: 0,
                                                              child:
                                                                  Container(
                                                                child:
                                                                    Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .symmetric(
                                                                    horizontal:
                                                                        10,
                                                                  ),
                                                                  child: ElevatedButton(
                                                                      style: ButtonStyle(
                                                                          elevation: MaterialStateProperty.all(10),
                                                                          // maximumSize: MaterialStateProperty.all(),
                                                                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
                                                                          backgroundColor: MaterialStateProperty.all(Color(0xffFE8E00))),
                                                                      onPressed: () {
                                                                        // Navigator.push(context, MaterialPageRoute(builder: (ctx)=>StepProgress()));
                                                                      },
                                                                      child: Center(
                                                                        child:
                                                                            Text(
                                                                          "ADD",
                                                                          style: TextStyle(
                                                                              color: Color(0xffFFFFFF),
                                                                              fontSize: 11,
                                                                              fontWeight: FontWeight.w700,
                                                                              fontFamily: "Montserrat"),
                                                                        ),
                                                                      )),
                                                                ),
                                                              ),
                                                            ),
                                                            Positioned(
                                                                right: 0,
                                                                top: 0,
                                                                child: Image
                                                                    .asset(
                                                                        "assets/image/star.png")),
                                                          ],
                                                        );
                                                      }),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Spacer(),
                                              Visibility(
                                                visible:
                                                    index == 0 ? false : true,
                                                child: Container(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        height: 2,
                                                        width: 50,
                                                      ),
                                                      InkWell(
                                                        onTap: () {},
                                                        child: Text(
                                                          "Veiw More",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff6739B7),
                                                              fontSize: 8,
                                                              fontFamily:
                                                                  "Montserrat",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                      ),
                                                      SvgPicture.asset(
                                                          "assets/svg/fluent_arrow-circle-right-32-regular.svg")
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Spacer()
                                            ],
                                          ),
                                          Gap(5),
                                          Container(
                                              height: 29,
                                              width: double.maxFinite,
                                              decoration: BoxDecoration(
                                                  gradient:
                                                      LinearGradient(stops: [
                                                0.3,
                                                0.6,
                                                0.9
                                              ], colors: [
                                                Color.fromRGBO(
                                                    194, 176, 226, 0.5),
                                                Color.fromRGBO(
                                                    103, 57, 183, 0),
                                                Color.fromRGBO(
                                                    103, 57, 183, 0),
                                              ])),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets
                                                                  .only(
                                                              left: 10,
                                                              top: 2,
                                                              right: 5),
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .currency_rupee,
                                                              size: 8,
                                                              color: Color(
                                                                  0xff141023)),
                                                          Text(
                                                            "750",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff141023),
                                                                fontSize: 10,
                                                                fontFamily:
                                                                    "Montserrat",
                                                                decoration:
                                                                    TextDecoration
                                                                        .lineThrough),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets
                                                              .only(top: 7),
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .currency_rupee,
                                                              size: 12,
                                                              color: Color(
                                                                  0xff6739B7)),
                                                          Text(
                                                            "500",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff6739B7),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 20,
                                                                fontFamily:
                                                                    "Montserrat"),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 3,
                                                  ),
                                                  Visibility(
                                                    visible: index == 0
                                                        ? false
                                                        : true,
                                                    child: Container(
                                                      height: 24,
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(
                                                            "First Month",
                                                            textAlign:
                                                                TextAlign.end,
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff000000),
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontFamily:
                                                                    "Montserrat"),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 30,
                                                  ),
                                                  Visibility(
                                                    visible: index == 0
                                                        ? false
                                                        : true,
                                                    child: Container(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                top: 10),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Icon(
                                                                Icons
                                                                    .currency_rupee,
                                                                size: 8,
                                                                color: Color(
                                                                    0xff141023)),
                                                            Text(
                                                              "649",
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff141023),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      12,
                                                                  fontFamily:
                                                                      "Montserrat"),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 3,
                                                  ),
                                                  Visibility(
                                                    visible: index == 0
                                                        ? false
                                                        : true,
                                                    child: Container(
                                                      height: 24,
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(
                                                            "From 01/08/22",
                                                            textAlign:
                                                                TextAlign.end,
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff000000),
                                                                fontSize: 8,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontFamily:
                                                                    "Montserrat"),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )

                                              // Stack(
                                              //   children: [
                                              //     Positioned(
                                              //       left: 10,
                                              //       top: 4,
                                              //       child: Row(
                                              //         crossAxisAlignment:
                                              //             CrossAxisAlignment
                                              //                 .start,
                                              //         children: [
                                              //           Icon(Icons.currency_rupee,
                                              //               size: 8,
                                              //               color: Color(
                                              //                   0xff141023)),
                                              //           Text(
                                              //             "750",
                                              //             style: TextStyle(
                                              //                 color: Color(
                                              //                     0xff141023),
                                              //                 fontSize: 10,
                                              //                 fontFamily:
                                              //                     "Montserrat",
                                              //                 decoration:
                                              //                     TextDecoration
                                              //                         .lineThrough),
                                              //           )
                                              //         ],
                                              //       ),
                                              //     ),
                                              //     Positioned(
                                              //       left: 37,
                                              //       top: 8,
                                              //       bottom: 1,
                                              //       child: Row(
                                              //         crossAxisAlignment:
                                              //             CrossAxisAlignment
                                              //                 .start,
                                              //         children: [
                                              //           Icon(Icons.currency_rupee,
                                              //               size: 12,
                                              //               color: Color(
                                              //                   0xff6739B7)),
                                              //           Text(
                                              //             "500",
                                              //             style: TextStyle(
                                              //                 color: Color(
                                              //                     0xff6739B7),
                                              //                 fontWeight:
                                              //                     FontWeight.bold,
                                              //                 fontSize: 20,
                                              //                 fontFamily:
                                              //                     "Montserrat-Bold"),
                                              //           )
                                              //         ],
                                              //       ),
                                              //     )
                                              //   ],
                                              // ),
                                              ),
                                          SizedBox(
                                            height: 20,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: index == 1
                                                ? Color(0xff6739B7)
                                                : Color(0xff07A605),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(14),
                                                bottomRight:
                                                    Radius.circular(14))),
                                        child: Visibility(
                                          visible: index == 0 ? false : true,
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 24, vertical: 2),
                                            child: Text(
                                              "Recommended",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color(0xffFFFFFF),
                                                  fontFamily: "Montserrat",
                                                  fontWeight:
                                                      FontWeight.w700),
                                            ),
                                          ),
                                        ),
                                      )),
                                  Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color: Color(0xff009DC7),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(14),
                                                bottomRight:
                                                    Radius.circular(14))),
                                        child: Visibility(
                                          visible: index == 0 ? false : true,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15,
                                                      vertical: 2),
                                              child: RichText(
                                                  text: const TextSpan(
                                                      text: "1 Month",
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        color:
                                                            Color(0xffFFFFFF),
                                                        fontFamily:
                                                            "Montserrat",
                                                      ),
                                                      children: [
                                                    TextSpan(
                                                      text:
                                                          " Free Premium Add On Trial",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Color(
                                                              0xffFFFFFF),
                                                          fontFamily:
                                                              "Montserrat",
                                                          fontWeight:
                                                              FontWeight
                                                                  .w700),
                                                    )
                                                  ]))),
                                        ),
                                      )),
                                  Visibility(
                                    visible: index == 0 ? false : true,
                                    child: Positioned(
                                        left: 9,
                                        bottom: 0,
                                        child: Text(
                                          "Limited Period Offer",
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 8,
                                              fontFamily:
                                                  "Montserrat-SemiBold"),
                                        )),
                                  ),
                                  Visibility(
                                    visible: index == 0 ? false : true,
                                    child: Positioned(
                                      right: 10,
                                      top: 5,
                                      child: Text(""),
                                    ),
                                  )
                                ]),
                              ),
                            );
                          })
 */
