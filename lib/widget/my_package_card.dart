import 'dart:convert';

import 'package:dawners/model/package_details_modal.dart';
import 'package:dawners/screens/helper/api_network.dart';
import 'package:dawners/screens/package_details.dart';
import 'package:dawners/screens/upgrade_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart'as http;
import 'package:string_to_hex/string_to_hex.dart';
class MyPackageCard extends StatefulWidget {
  const MyPackageCard({Key? key}) : super(key: key);

  @override
  State<MyPackageCard> createState() => _MyPackageCardState();
}

class _MyPackageCardState extends State<MyPackageCard> {
  List<PackageDetailsModal> showPremiumPackageList=[];

  getPackageDetails()async{
    final response = await http.post(Uri.parse(ApiNetwork.showPremiumPackage));
    if(response.statusCode == 200){
      List jsonResponse = jsonDecode(response.body);
      print("{$jsonResponse}hello");

      showPremiumPackageList = List<PackageDetailsModal>.from(jsonResponse.map((e) => PackageDetailsModal.fromJson(e)));
    }

  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getPackageDetails(),
        builder: (context , snapshot){
      print(showPremiumPackageList);

      return ListView.builder(
          itemCount: showPremiumPackageList.length,
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
                      Container(
                        height: 16,
                        width: 128,
                        decoration: BoxDecoration(
                            color:  Color(StringToHex.toColor(
                                showPremiumPackageList[i]
                                    .recommendedColor!
                                    .replaceAll("#", "0xff"))),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(14),
                                bottomRight: Radius.circular(14))),
                        child: Center(
                          child: Text(
                            showPremiumPackageList[i].recommended!,
                            style: GoogleFonts.montserrat(
                                color: Color(0xffFFFFFF),
                                fontSize: 10,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Gap(15),

                      Expanded(
                        child: RichText(text: TextSpan(text: showPremiumPackageList[i].susbcribers ,style: GoogleFonts.montserrat(
                            color: Color(0xff07A605),
                            fontSize: 9,
                            fontWeight: FontWeight.w400),children: [TextSpan(text: " happy Subscribers in your area",style: GoogleFonts.montserrat(
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
                              showPremiumPackageList[i].packageTitle!,
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: Color(0xff000000)),
                            ),

                            Text(
                              showPremiumPackageList[i].subPackage!,
                              style: GoogleFonts.montserrat(
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                            Gap(5),
                            Text(showPremiumPackageList[i].overviewTitle!,
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

                          Text(showPremiumPackageList[i].services!,style: GoogleFonts.montserrat(
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
                              showPremiumPackageList[i].dailyPrice!,
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
                              showPremiumPackageList[i].firstMonthPrice!,
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
                                showPremiumPackageList[i].secondMonthPrice!,
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
                            decoration: BoxDecoration(
                                color: Color(StringToHex.toColor(showPremiumPackageList[i]
                                    .packageTagColor!
                                    .replaceAll("#", "0xff"))),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(14),
                                    bottomRight: Radius.circular(14))),
                            child: Center(
                              child: RichText(textAlign: TextAlign.center,
                                text: TextSpan(
                                    text: showPremiumPackageList[i].limitedOffer!,
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 8,
                                        color: Color(0xffFFFFFF)),
                                    children: [
                                      TextSpan(
                                          text: " ${showPremiumPackageList[i].packageTag!}",
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 12,
                                              color: Color(
                                                  0xffffffff)))
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
    });
  }
}
