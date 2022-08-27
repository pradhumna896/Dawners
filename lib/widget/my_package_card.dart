import 'package:dawners/screens/package_details.dart';
import 'package:dawners/screens/upgrade_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
class MyPackageCard extends StatelessWidget {
  const MyPackageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        itemBuilder: (ctx, i) => InkWell(
          onTap: (){
            if (i == 0) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (ctx) =>
                          UpgradePackage()));
            } else if (i == 1) {
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
                    i == 0
                        ? Gap(16)
                        : Container(
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

                    i==0?Gap(1):Expanded(
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
                Visibility(
                  visible: i==0?false:true,
                  child: Row(
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
                     Visibility(
                         visible: i==0?false:true,
                         child: Row(children: [
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
                     ],))
                    ],
                  ),
                ),
                Gap(9),
                i == 0
                    ? Gap(10)
                    : Row(
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
                          decoration: BoxDecoration(
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
        ));
  }
}
