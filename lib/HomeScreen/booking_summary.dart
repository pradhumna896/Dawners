import 'package:dawners/HomeScreen/select_service_slot.dart';
import 'package:dawners/helper/custom_botton_purple.dart';
import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/model/schedule_service_model.dart';
import 'package:dawners/screens/bottombar/bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class BookingSummary extends StatelessWidget {
  const BookingSummary({Key? key}) : super(key: key);

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
          "Booking Summary",
          style: TextStyle(
              color: Color(0xff0E1012),
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: "Montserrat-Bold"),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Column(
            children: [
              Gap(15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Row(
                  children: [
                    Text(
                      "Confirm Details",
                      style: TextStyle(
                          color: Color(0xff0E1012),
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w800,
                          fontSize: 24),
                    ),
                  ],
                ),
              ),
              Gap(20),
              SizedBox(
                height: 175,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Color(0xffFFFFFF),
                          border: Border.all(color: Color(0xff6739B7))),
                      height: 175,
                      width: 127,
                      child: Column(
                        children: [
                          Gap(13),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            child: Material(
                              elevation: 5,
                              borderRadius: BorderRadius.circular(14),
                              child: Container(
                                height: 103,
                                width: 103,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: Color(0xffD6F6FF),
                                ),
                                child:
                                    Image.asset("assets/image/serviceCar.png"),
                              ),
                            ),
                          ),
                          Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Add Name!",
                                style: TextStyle(
                                    color: Color(0xff6739B7),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Montserrat-Bold"),
                              ),
                              Gap(8),
                              SvgPicture.asset(
                                  "assets/svg_icon/fluent_edit-28-filled.svg")
                            ],
                          ),
                          Gap(3),
                          Text(
                            "MH-14-KC-9999",
                            style: TextStyle(
                                fontFamily: "Montserrat-Regular",
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff7B8D9E)),
                          )
                        ],
                      ),
                    ),
                    Gap(15),
                    Container(
                      // margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Color(0xffFFFFFF),
                          border: Border.all(color: Color(0xff6739B7))),
                      height: 175,
                      width: 127,
                      child: Column(
                        children: [
                          Gap(13),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            child: Material(
                              elevation: 5,
                              borderRadius: BorderRadius.circular(14),
                              child: Container(
                                  height: 103,
                                  width: 103,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Color(0xffFEE1E6),
                                  ),
                                  child: Center(
                                    child: RichText(
                                      text: TextSpan(
                                          text: "13\n",
                                          style: TextStyle(
                                              color: Color(0xff253141),
                                              fontFamily:
                                                  "Montserrat-ExtraBold",
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800),
                                          children: [
                                            TextSpan(
                                                text: "Dec",
                                                style: TextStyle(
                                                    color: Color(0xff253141),
                                                    fontFamily:
                                                        "Montserrat-SemiBold",
                                                    fontSize: 14.75,
                                                    fontWeight:
                                                        FontWeight.w600))
                                          ]),
                                    ),
                                  )),
                            ),
                          ),
                          Gap(18),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "10:30 AM",
                                style: TextStyle(
                                    color: Color(0xff6739B7),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Montserrat-Bold"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Gap(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Row(
                  children: [
                    Text(
                      "2 Services Requested",
                      style: TextStyle(
                          color: Color(0xff7B8D9E),
                          fontFamily: "Montserrat-Bold",
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    )
                  ],
                ),
              ),
              Gap(10),
              Flexible(
                child: ListView.builder(
                    itemCount: ScheduleServiceModel.scheduleServiceModel.length,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 28, vertical: 5),
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(24),
                          child: Container(
                            width: double.maxFinite,
                            height: 93,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(color: Color(0xff6739B7)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 56,
                                  width: 56,
                                  decoration: BoxDecoration(
                                      color: ScheduleServiceModel.scheduleServiceModel[index].bgColor,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      "assets/svg_icon/Group 2407.svg",height: 30,width: 30,),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Interior  Spa",
                                      style: TextStyle(
                                          color: Color(0xff0E1012),
                                          fontFamily: "Montserrat-Bold",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18),
                                    ),
                                    Gap(7),
                                    RichText(
                                        text: TextSpan(
                                            text: "2 out of 4",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "Montserrat-Bold",
                                              color: Color(0xff7B8D9E),
                                            ),
                                            children: [
                                          TextSpan(
                                              text: " Interior Spa’s Remaining",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily:
                                                      "Montserrat-Regular",
                                                  color: Color(0xff7B8D9E)))
                                        ]))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: CustomBottonPurple(onClick: () {
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>CurveAppBar()));
            }, title: 'Confirm Booking', height: 56,),
          ),
          Gap(20),
        ],
      ),
    );
  }
}
