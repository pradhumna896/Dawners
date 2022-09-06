import 'package:dawners/helper/appbar_back_button.dart';
import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/provider/card_controller.dart';
import 'package:dawners/screens/bottombar/bottom_app_bar.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/loginPage/loginHelper/profile_detail.dart';
import 'package:dawners/screens/set_up_payments.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:dawners/model/vehicle_package_model.dart';

class ConfirmMationScreen extends StatelessWidget {
  const ConfirmMationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<CardController>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Confirm Your Details",
          style: KTextClass.AppBarStyle,
        ),
        leading: AppBarBackButton(
          onclick: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Gap(Dimentions.height20),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimentions.width15,
              ),
              child: Row(
                children: [
                  Text(
                    "Personal Information  ",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: Dimentions.font20,
                        fontWeight: FontWeight.w800,
                        fontFamily: "Montserrat"),
                  ),
                ],
              ),
            ),
            Gap(Dimentions.height6),
            Container(
              margin: EdgeInsets.symmetric(horizontal: Dimentions.width15),
              padding: EdgeInsets.symmetric(horizontal: Dimentions.width20, vertical: Dimentions.height10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimentions.height14),
                  border: Border.all(color: Color(0xff6739B7), width: 2)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(Dimentions.height20),
                  profileDetail(
                    title: 'Full Name',
                    icon: 'assets/svg_icon/fluent_person-16-filled.svg',
                    subtitle: 'Gaurav Shekhawat',
                  ),
                  Gap(Dimentions.height20),
                  profileDetail(
                      icon: "assets/svg_icon/mobile_icon.svg",
                      subtitle: "9067610118",
                      title: "Mobile Number"),
                  Gap(Dimentions.height20),
                  profileDetail(
                      icon: "assets/svg_icon/fluent_home-person-20-filled.svg",
                      subtitle: "C-1402",
                      title: "Flate Number"),
                  Gap(Dimentions.height20),
                  profileDetail(
                      icon: "assets/svg/Societyname.svg",
                      subtitle: "SANGRIA,MEGAPOLIS,\nHINJEWADI -PHASE 3.",
                      title: "Society Name")
                ],
              ),
            ),
            Visibility(
              visible: data.isVisible,
              child: Column(
                children: [
                  Gap(Dimentions.height20),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: Dimentions.width15),
                    child: Row(
                      children: [
                        Text(
                          "Vehicle Information ",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: Dimentions.font20,
                              fontWeight: FontWeight.w800,
                              fontFamily: "Montserrat"),
                        ),
                      ],
                    ),
                  ),
                  Gap(Dimentions.height10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Dimentions.width15),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(Dimentions.height24,),
                      child: Container(
                        height:Dimentions.height85,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimentions.height24),
                            color: Color(0xffFFFFFF)),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: Dimentions.width20),
                          child: Row(
                            children: [
                              Container(
                                height: Dimentions.height63,
                                width: Dimentions.width63,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(Dimentions.height63),
                                    color: Color(0xffD6F6FF)),
                                child: Center(
                                    child: SvgPicture.asset(
                                        "assets/svg_icon/Group 7275.svg")),
                              ),
                              Gap(Dimentions.width15),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Start Date And Time ",
                                    style: ksubHeading.copyWith(
                                        color: Color(0xff0E1012),
                                        fontWeight: FontWeight.w400,
                                        fontSize: Dimentions.font15),
                                  ),
                                  Gap(Dimentions.height5),
                                  Text(
                                    "10:30 am 24 jun 2022",
                                    style: ksubHeading.copyWith(
                                        color: Color(0xff0E1012),
                                        fontWeight: FontWeight.w600,
                                        fontSize: Dimentions.font18),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap(Dimentions.height10),
                  SizedBox(
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: VehiclePackageModel.vehiclePackage.length,
                        shrinkWrap: true,
                        padding: EdgeInsets.only(bottom: Dimentions.height10),
                        itemBuilder: (BuildContext context, index) {
                          return Padding(
                            padding:EdgeInsets.symmetric(
                                horizontal: Dimentions.width15, vertical: Dimentions.height12),
                            child: Material(
                              elevation: 5,
                              borderRadius: BorderRadius.circular(Dimentions.height24),
                              child: Container(
                                height: Dimentions.height85,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(Dimentions.height24),
                                    color: Color(0xffFFFFFF)),
                                child: Padding(
                                  padding:  EdgeInsets.symmetric(
                                      horizontal: Dimentions.width15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: Dimentions.height70,
                                        width:Dimentions.width70,
                                        child: Stack(children: [
                                          Positioned(
                                            bottom: 0,
                                            child: Container(
                                              height:Dimentions.height63,
                                              width: Dimentions.width63,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: index == 0
                                                          ? Color(0xff6739B7)
                                                          : Color(0xffF0EBF8)),
                                                  borderRadius:
                                                      BorderRadius.circular(Dimentions.height63),
                                                  color: VehiclePackageModel
                                                      .vehiclePackage[index]
                                                      .color),
                                              child: Center(
                                                  child: Image.asset(
                                                      VehiclePackageModel
                                                          .vehiclePackage[index]
                                                          .image
                                                          .toString())),
                                            ),
                                          ),
                                          Visibility(
                                            visible: index == 0 ? true : false,
                                            child: Positioned(
                                              right: 0,
                                              top: 0,
                                              child: Image.asset(
                                                "assets/image/premiumpackage.png",
                                                height:Dimentions.height30,
                                                width: Dimentions.width30,
                                              ),
                                            ),
                                          )
                                        ]),
                                      ),
                                      Gap(Dimentions.width15),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              VehiclePackageModel
                                                  .vehiclePackage[index].title!,
                                              textAlign: TextAlign.center,
                                              style: ksubHeading.copyWith(
                                                  color: VehiclePackageModel
                                                      .vehiclePackage[index]
                                                      .textColor,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12),
                                            ),
                                            Gap(5),
                                            Text(
                                              "KA-45-KC 2814",
                                              textAlign: TextAlign.center,
                                              style: ksubHeading.copyWith(
                                                  color: Color(0xff0E1012),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: Dimentions.font10),
                                            )
                                          ],
                                        ),
                                      ),
                                      Gap(Dimentions.width15),
                                      Expanded(
                                        flex:2 ,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.currency_rupee,
                                                      color: VehiclePackageModel
                                                          .vehiclePackage[index]
                                                          .textColor,
                                                      size: Dimentions.height20,
                                                    ),
                                                    Text(
                                                      "500",
                                                      style: ksubHeading.copyWith(
                                                          color:
                                                              VehiclePackageModel
                                                                  .vehiclePackage[
                                                                      index]
                                                                  .textColor,
                                                          fontSize: Dimentions.font24,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                  ],
                                                ),
                                                InkWell(
                                                    onTap: () {},
                                                    child: Text(
                                                      "View Details",
                                                      style: GoogleFonts.montserrat(
                                                          fontSize: Dimentions.font10,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color:
                                                              VehiclePackageModel
                                                                  .vehiclePackage[
                                                                      index]
                                                                  .textColor),
                                                    ))
                                              ],
                                            ),
                                            Gap(Dimentions.height5),
                                            InkWell(
                                              onTap: () {},
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    boxShadow: [
                                                      BoxShadow(
                                                          offset: Offset
                                                              .fromDirection(
                                                                  2, -2),
                                                          color:
                                                              Color(0x12000000))
                                                    ],
                                                    color: VehiclePackageModel
                                                        .vehiclePackage[index]
                                                        .textColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            Dimentions.height5)),
                                                child: Padding(
                                                  padding:  EdgeInsets
                                                          .symmetric(
                                                      horizontal: Dimentions.width15,
                                                      vertical: Dimentions.height7),
                                                  child: Text("Premium Pack",
                                                      style:
                                                          ksubHeading.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: Dimentions.font13,
                                                              color: Color(
                                                                  0xffFFFFFF))),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  Divider(
                    height: Dimentions.height5,
                    color: Color(0xff07A605),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Dimentions.width28),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "TOTAL",
                          style: TextStyle(
                              color: Color(0xff07A605),
                              fontSize: Dimentions.font15,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.currency_rupee_sharp,
                                color: Color(0xff07A605),
                                size: Dimentions.height12,
                              ),
                              Text(
                                "1500",
                                style: TextStyle(
                                    color: Color(0xff07A605),
                                    fontSize: Dimentions.font15,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    height: Dimentions.height5,
                    color: Color(0xff07A605),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Gap(Dimentions.height20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          print(data.isVisible);

                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimentions.height14),
                              border: Border.all(
                                  color: Color(0xff6739B7), width: 2)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimentions.width28, vertical: Dimentions.height7),
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                  color: Color(0xff6739B7),
                                  fontSize: Dimentions.font14,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      Gap(Dimentions.height30),
                      InkWell(
                        onTap: data.isVisible == false
                            ? null
                            : () {
                                Navigator.push(context, MaterialPageRoute(builder: (builder)=>SetUpPayment()));
                              },
                        child: Container(
                          decoration: BoxDecoration(
                              color:  Color(0xff6739B7),
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                  color: data.isVisible == false
                                      ? Color(0xffB39CDB)
                                      : Color(0xff6739B7),
                                  width: 2)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:Dimentions.width28, vertical: Dimentions.height7),
                            child: Text(
                              "Confirm",
                              style: GoogleFonts.montserrat(
                                color: Color(0xffFFFFFF),
                                fontSize: Dimentions.font14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Gap(Dimentions.height60)
          ],
        ),
      ),
    );
  }


}
