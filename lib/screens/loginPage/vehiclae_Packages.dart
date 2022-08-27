import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/helper/ktext_class.dart';
// import 'package:dawners/pages/package_page_screen.dart';
import 'package:dawners/provider/app_controller.dart';
import 'package:dawners/screens/package_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class VehiclePackage extends StatelessWidget {
  const VehiclePackage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<AppController>(context);
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
          "Choose Package",
          style:KTextClass.AppBarStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Specially Curated for you",
                        style: TextStyle(
                            color: Color(0xff0E1012),
                            fontSize: 20,
                            fontFamily: "Montserrat"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Vehicle Number 1",
                        style: TextStyle(
                            color: Color(0xff0072F9),
                            fontSize: 16,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset("assets/svg/fluent_edit-28-filled.svg"),
                      Spacer(),
                      const Text(
                        "Enter Vehicle Name or Number",
                        style: TextStyle(
                            color: Color(0xff7B8D9E),
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat-Bold"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // color: Colors.black,
                        child: Column(
                          children: [
                            Container(
                              height: 94,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Color(0xffE1D7F1),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              child: Image.asset("assets/image/carimage.png"),
                            ),
                            Container(
                              width: 150,
                              height: 37,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomLeft,
                                      // stops: [0.3,0.6,0.9],
                                      colors: [
                                        Color(0xff4F2C8C),
                                        Color(0xff6739B7),
                                        Color(0xff8A68C6),
                                        Color(0xff8A68C6),
                                      ]),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                  color: Color(0xff6A3ABC)),
                              child: Center(
                                child: Text(
                                  "MH-14-KC-2787",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      fontFamily: "Montserrat"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // color: Colors.black,
                        child: Column(
                          children: [
                            Container(
                              height: 94,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Color(0xffE1D7F1),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 24,
                                        width: 61,
                                        decoration: BoxDecoration(
                                            color: Color(0xff07A605),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                            )),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                                right: 9,
                                                top: 4,
                                                child: Icon(
                                                  Icons.currency_rupee,
                                                  size: 12,
                                                  color: Color(0xffFFFFFF),
                                                )),
                                            Positioned(
                                              left: 15,
                                              top: 4,
                                              child: Text(
                                                "499",
                                                style: TextStyle(
                                                    color: Color(0xffFFFFFF),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily:
                                                        "Montserrat"),

                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Center(
                                    child: Image.asset(
                                        "assets/image/premiumpackage.png"),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 37,
                              width: 150,
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomLeft,
                                      // stops: [0.3,0.6,0.9],
                                      colors: [
                                        Color(0xff4F2C8C),
                                        Color(0xff6739B7),
                                        Color(0xff8A68C6),
                                        Color(0xff8A68C6),
                                      ]),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                  color: Color(0xff6A3ABC)),
                              child: Center(
                                child: Text(
                                  "Daily Cleaning",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Montserrat"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Vehicle Number 2",
                        style: TextStyle(
                            color: Color(0xff0072F9),
                            fontSize: 16,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset("assets/svg/fluent_edit-28-filled.svg"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // color: Colors.black,
                        child: Column(
                          children: [
                            Container(
                              height: 94,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Color(0xffFAF1DF),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              child: Image.asset("assets/image/carimage.png"),
                            ),
                            Container(
                              height: 37,
                              width: 150,
                              decoration: BoxDecoration(
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
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                  color: Color(0xffE09F1F)),
                              child: Center(
                                child: Text(
                                  "MH-14-KC-5108",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      fontFamily: "Montserrat"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) =>PackagePageScreen()));
                        },
                        child: Container(
                          // color: Colors.black,
                          child: Column(
                            children: [
                              Container(
                                height: 94,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Color(0xffFAF1DF),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20))),
                                child: Center(
                                  child: SvgPicture.asset(
                                      "assets/svg/choosepackage.svg"),
                                ),
                              ),
                              Container(
                                height: 35,
                                width: 150,
                                decoration: BoxDecoration(
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
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20)),
                                    color: Color(0xffE09F1F)),
                                child: Center(
                                  child: Text(
                                    "Choose Package",
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Montserrat"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Vehicle Number 3",
                        style: TextStyle(
                            color: Color(0xff0072F9),
                            fontSize: 16,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset("assets/svg/fluent_edit-28-filled.svg"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // color: Colors.black,
                        child: Column(
                          children: [
                            Container(
                              height: 94,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Color(0xffD6F6FF),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              child: Image.asset("assets/image/carimage.png"),
                            ),
                            Container(
                              height: 37,
                              width: 150,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomLeft,
                                      // stops: [0.3,0.6,0.9],
                                      colors: [
                                        Color(0xff00A3CF),
                                        Color(0xff3DB4D4),
                                        Color(0xff3DB4D4),
                                        Color(0xff00A3CF),
                                      ]),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                  color: Color(0xff00A3CF)),
                              child: Center(
                                child: Text(
                                  "MH-14-KC-5108",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      fontFamily: "Montserrat"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // color: Colors.black,
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                    height: 94,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Color(0xffD6F6FF),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20))),
                                    child: Center(
                                      child: SvgPicture.asset(
                                          "assets/svg/skypackage.svg"),
                                    )),
                                // Padding(
                                //   padding: const EdgeInsets.only(
                                //       left: 10, right: 10, bottom: 40),
                                //
                                // ),
                              ],
                            ),
                            Container(
                              height: 35,
                              width: 150,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomLeft,
                                      // stops: [0.3,0.6,0.9],
                                      colors: [
                                        Color(0xff00A3CF),
                                        Color(0xff3DB4D4),
                                        Color(0xff3DB4D4),
                                        Color(0xff00A3CF),
                                      ]),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                  color: Color(0xff00A3CF)),
                              child: Center(
                                child: Text(
                                  "Choose Package",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Montserrat"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Gap(21),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Add More +",
                          style: TextStyle(
                              color: Color(0xff0072F9),
                              fontWeight: FontWeight.w400,
                              fontSize: 12.8,
                              fontFamily: "Montserrate"),
                        ),
                      )
                    ],
                  ),
                  Gap(14)
                ],
              ),
            ),
            Divider(
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
                          "499",
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
              color: Color(0xff07A605),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: CustomButton(
                text: 'Continue',
                onclick: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext contex) {
                        return Dialog(
                          child: Container(

                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                            children: [
                              Gap(14),
                              Text(
                                "CONGRATULATIONS",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontFamily: "Montserrat",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "YOUR CLEANER GAVE YOU FREE COINS",
                                style: TextStyle(
                                    color: Color(0xff83939E),
                                    fontFamily: "Montserrat",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                              Gap(25),
                              Material(
                                borderRadius: BorderRadius.circular(40),
                                elevation: 10,
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundColor: Color(0xffDCEDF9),
                                  child: Image.asset(
                                      "assets/icons/Dbigcircle.png"),
                                ),
                              ),
                              Gap(20),
                              Text(
                                '100 x 3 = 300 ',
                                style: TextStyle(
                                    color: Color(0xff6739B7),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontFamily: "Montserrat-Bold"),
                              ),
                              Text(
                                'DAWNERS COINS RECIEVED',
                                style: TextStyle(
                                    color: Color(0xff6739B7),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    fontFamily: "Montserrat-SemiBold"),
                              ),
                              Gap(10),
                              Text(
                                'USE THEM TO PAY FOR PREMIUM ADD ON SERVICES',textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff83939E),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    fontFamily: "Montserrat-SemiBold"),
                              ),
                              Gap(30),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 38),
                                child: InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>PackagePageScreen()));
                                  },
                                  child: Container(
                                    width: double.maxFinite,
                                    height: 33,
                                    decoration: BoxDecoration(
                                        gradient: kPurplegradient,
                                        borderRadius: BorderRadius.circular(14),
                                        color: Color(0xff6A3ABC)),
                                    child: Center(
                                      child: Text(
                                        "Use To Pay",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xffFFFFFF),
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Montserrat"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Gap(20)
                            ],
                          )),
                        );
                      });
                },
              ),
            ),
            Gap(20)
          ],
        ),
      ),
    );
  }
}
