import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
class ReviewFourWidget extends StatelessWidget {
  const ReviewFourWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Expanded(
        flex: 4,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              margin: EdgeInsets.only(right: 10),
              height: 256,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Color(0xff6739B7), width: 2)),
              child: Column(
                children: [
                  Gap(20),
                  Text(
                    "YOUR IDEAS",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Montserrat-Bold",
                        fontSize: 20),
                  ),
                  Gap(8),
                  Text(
                    "SO WE CAN PERSONALISE OUR SERVICES FOR YOU",
                    style: TextStyle(
                        color: Color(0xff83939E),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Montserrat-SemiBold",
                        fontSize: 12),
                  ),
                  Gap(28),
                  SvgPicture.asset(
                    "assets/svg_icon/IDEAICOM.svg",

                  ),
                  Gap(20),
                  Text(
                    "WHAT ARE YOUR EXPECTATIONS FROM DAWNERS?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff6739B7),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Montserrat-SemiBold",
                        fontSize: 12),
                  ),
                  Gap(15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Material(
                      borderRadius: BorderRadius.circular(14),
                      elevation: 5,
                      child: Container(
                        width: double.maxFinite,
                        height: 68,

                        decoration: BoxDecoration(
                          color: Color(0xffFAA53A),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomLeft,
                              // stops: [0.3,0.6,0.9],
                              colors: [
                                Color(0xffe3e7ee),
                                Color(0xffFFFFFF),
                                Color(0xffFFFFFF),
                                Color(0xffFFFFFF),
                                Color(0xffFFFFFF),
                                // Color(0xffA9ADB4),
                              ]),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        // child:Center(
                        //     child: Text(text, style: TextStyle(
                        //     color: Color(0xffFFFFFF),
                        //     fontSize: 24,
                        //     fontWeight: FontWeight.w700,
                        //     fontFamily: "Montserrat"
                        // ),))
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 60),
                            child: Text("be as particular as you can,so we can deliver the same!\n......start typing.......",
                              textAlign: TextAlign.center,
                            style: TextStyle(color: Color(0xff7B8D9E),fontSize: 10,
                            fontFamily: "Montserrat"),),
                          ),
                        ),
                      ),
                    ),
                  )


                ],
              ),
            )));
  }
}
