import 'package:dawners/provider/card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
class ReviewOneWidget extends StatelessWidget {
  const ReviewOneWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data= Provider.of<CardController>(context);
    return Expanded(
        flex: 3,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child:Container(
            margin: EdgeInsets.only(right: 10),
            height: 256,
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border:
                Border.all(color: Color(0xff6739B7), width: 2)),
            child: Column(
              children: [
                Gap(20),
                Text(
                  "CONFIRM CLEANER",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Montserrat-Bold",
                      fontSize: 20),
                ),
                Gap(8),
                Text(
                  "FROM 13TH MARCH 2022, 10:30 AM",
                  style: TextStyle(
                      color: Color(0xff83939E),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Montserrat-SemiBold",
                      fontSize: 12),
                ),
                Gap(25),
                Container(
                  height: 91,
                  width: 123.5,
                  child: LayoutBuilder(
                    builder: (BuildContext context,
                        BoxConstraints constraints) {
                      return Stack(
                        children: [
                          Positioned(
                              bottom: 0,
                              left: 5,
                              child: Container(
                                height: 83,
                                width: 83,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(83),
                                ),
                                child: Image.asset(
                                    "assets/image/cleanerimage.png"),
                              )),
                          Positioned(
                              left: 0,
                              top: 5,
                              child: SvgPicture.asset(
                                  "assets/svg_icon/cleanercheckicon.svg")),
                          Positioned(
                              right: 5,
                              top: 5,
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                      "assets/svg_icon/fluent_star-12-filled.svg"),
                                  Gap(5),
                                  Text(
                                    "4.7",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 14,
                                        fontFamily:
                                        "Montserrat-SemiBold",
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ))
                        ],
                      );
                    },
                  ),
                ),
                Gap(20),
                Text(
                  "SHIV Is Ready To Take Care Of Your Vehicle!",
                  style: TextStyle(
                      color: Color(0xff6739B7),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Montserrat-SemiBold",
                      fontSize: 12),
                ),
                Gap(20),
                Text(
                  "Mobile Number - 9845421540",
                  style: TextStyle(
                      color: Color(0xff83939E),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Montserrat-SemiBold",
                      fontSize: 12),
                ),
              ],
            ),
          )
        ));
  }
}
