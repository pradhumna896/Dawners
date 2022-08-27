import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
class ReviewTwoWidget extends StatelessWidget {
  const ReviewTwoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
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
                    "GIVE RATINGS",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Montserrat-Bold",
                        fontSize: 20),
                  ),
                  Gap(8),
                  Text(
                    "SO WE CAN GIVE YOU BEST EXPERIENCE!",
                    style: TextStyle(
                        color: Color(0xff83939E),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Montserrat-SemiBold",
                        fontSize: 12),
                  ),
                  Gap(25),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(83),
                    child: Container(
                      height: 83,
                      width: 83,
                      decoration: BoxDecoration(
                          color: Color(0xffDCEDF9),
                          borderRadius: BorderRadius.circular(83)),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/svg_icon/fluent_star-12-filled.svg",
                          height: 56,
                          width: 56,
                        ),
                      ),
                    ),
                  ),
                  Gap(20),
                  Text(
                    "HOW WAS YOUR  SERVICE EXPERIENCE,WITH HIM IN PAST?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff6739B7),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Montserrat-SemiBold",
                        fontSize: 12),
                  ),
                  Gap(20),
                  RatingBar(
                      itemCount: 5,
                      ratingWidget: RatingWidget(
                          full: SvgPicture.asset(
                              "assets/svg_icon/fluent_star-12-filled.svg"), empty: SvgPicture.asset(
                          "assets/svg_icon/fluent_star-12-filled.svg"), half:SvgPicture.asset(
                          "assets/svg_icon/fluent_star-12-filled.svg")),
                      onRatingUpdate: (rating){

                      })
                ],
              ),
            )));
  }
}
