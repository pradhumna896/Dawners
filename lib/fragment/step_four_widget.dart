import 'package:dawners/helper/custom_button.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/screens/bottombar/bottom_app_bar.dart';
import 'package:dawners/screens/confirmfation_screen.dart';
import 'package:dawners/screens/custom_textfield.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:dawners/screens/upgrade_package.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class StepFourWidget extends StatefulWidget {
  StepFourWidget({Key? key}) : super(key: key);

  @override
  State<StepFourWidget> createState() => _StepFourWidgetState();
}

class _StepFourWidgetState extends State<StepFourWidget> {
  TextEditingController societyNameController = TextEditingController();

  TextEditingController flatHouseController = TextEditingController();

  String title = "Area Name";
  String nearestLandmark = "Nearest Landmark";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Your Address Details",
                style: TextStyle(
                    color: Color(0xff0E1012),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Montserrat-ExtraBold"),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                "For best experience, please add exact details",
                style: TextStyle(
                  color: Color(0xff7B8D9E),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat-Bold",
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            kvalidator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Pleasa enter valid input";
              } else {
                return null;
              }
            },
            hinttext: 'Society Name',
            image: 'assets/svg/Societyname.svg',
            controller: societyNameController,
            keyboardtype: TextInputType.streetAddress,
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            kvalidator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Pleasa enter valid input";
              } else {
                return null;
              }
            },
            hinttext: "Flat/House Number",
            image: "assets/svg/hasetag.svg",
            controller: flatHouseController,
            keyboardtype: TextInputType.streetAddress,
          ),
          SizedBox(
            height: 20,
          ),
          Material(
            borderRadius: BorderRadius.circular(14),
            elevation: 5,
            child: Container(
                width: double.maxFinite,
                height: 56,
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
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimentions.width15),
                      child: SvgPicture.asset("assets/svg_icon/areanameicon.svg"),
                    ),
                    Expanded(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                            icon: Padding(
                              padding: EdgeInsets.only(right: Dimentions.width10),
                              child: SvgPicture.asset(
                                  "assets/svg_icon/fluent_triangle-down-12-filled.svg",
                                  height: 20,
                                  width: 20),
                            ),
                            dropdownColor: Color(0xffDCEDF9),
                            itemHeight: kMinInteractiveDimension,
                            style: TextStyle(
                                color: Color(0xff0E1012),
                                fontFamily: "NunitoSans",
                                fontWeight: FontWeight.w600,
                                fontSize: 12),
                            elevation: 5,
                            hint: Text(
                              title,
                              style: ksubHeading.copyWith(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                            borderRadius: BorderRadius.circular(14),
                            items: [
                              DropdownMenuItem(
                                value: "Area Name",
                                child: Text("Area Name"),
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
                                title = value.toString();
                              });
                            }),
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Material(
            borderRadius: BorderRadius.circular(14),
            elevation: 5,
            child: Container(
                width: double.maxFinite,
                height: 56,
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
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimentions.width15),
                      child: SvgPicture.asset("assets/svg_icon/nearestmarkicon.svg"),
                    ),
                    Expanded(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                            icon: Padding(
                              padding: EdgeInsets.only(right: Dimentions.width10),
                              child: SvgPicture.asset(
                                  "assets/svg_icon/fluent_triangle-down-12-filled.svg",
                                  height: 20,
                                  width: 20),
                            ),
                            dropdownColor: Color(0xffDCEDF9),
                            itemHeight: kMinInteractiveDimension,
                            style: TextStyle(
                                color: Color(0xff0E1012),
                                fontFamily: "NunitoSans",
                                fontWeight: FontWeight.w600,
                                fontSize: 12),
                            elevation: 5,
                            hint: Text(
                              nearestLandmark,
                              style: ksubHeading.copyWith(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                            borderRadius: BorderRadius.circular(14),
                            items: [
                              DropdownMenuItem(
                                value: "Nearest LandMark",
                                child: Text("Nearest LandMark"),
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
                                title = value.toString();
                              });
                            }),
                      ),
                    ),
                  ],
                )),
          ),

          SizedBox(
            height: 30,
          ),
          CustomButton(
              text: "Submit",
              onclick: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => ConfirmMationScreen()));
              }),
        ],
      ),
    );
  }
}

/*
Container(
              width: double.maxFinite,
              height: 56,
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
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Area Name",
                  hintStyle: ksubHeading.copyWith(fontSize: 20,fontWeight: FontWeight.w400),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: SvgPicture.asset("assets/svg_icon/areanameicon.svg"),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: SvgPicture.asset("assets/svg_icon/fluent_triangle-down-12-filled.svg",height: 20,width: 20,),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(
                        color: Colors.white,
                      )),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
 */
