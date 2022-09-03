import 'dart:io';

import 'package:dawners/helper/appbar_back_button.dart';
import 'package:dawners/helper/custom_botton_purple.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class ReworkPage extends StatefulWidget {
  const ReworkPage({Key? key}) : super(key: key);

  @override
  State<ReworkPage> createState() => _ReworkPageState();
}

class _ReworkPageState extends State<ReworkPage> {
  File? pickedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: AppBarBackButton(onclick: () {
          Navigator.pop(context);
        }),
        title: Text(
          "Request Rework",
          style: KTextClass.AppBarStyle,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap(Dimentions.height20),
              Material(
                borderRadius: BorderRadius.circular(Dimentions.height26),
                elevation: 5,
                child: InkWell(
                  onTap: imagePickerOption,
                  child: Container(
                    height: Dimentions.height183,
                    width: Dimentions.width183,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimentions.height26),
                        color: Color(0xffFAF0DB)),
                    child: pickedImage != null
                        ? ClipRRect(
                            borderRadius:
                                BorderRadius.circular(Dimentions.height14),
                            child: Image.file(
                              pickedImage!,
                              fit: BoxFit.fill,
                            ),
                          )
                        : Center(
                            child: InkWell(
                              onTap: imagePickerOption,
                              child: SvgPicture.asset(
                                  "assets/svg/fluent_camera-add-48-filled.svg"),
                            ),
                          ),
                  ),
                ),
              ),
              Gap(Dimentions.height12),
              Text(
                "Upload Picture",
                style: TextStyle(
                    color: Color(0xff0E1012),
                    fontWeight: FontWeight.w700,
                    fontSize: Dimentions.font22,
                    fontFamily: "Montserrat"),
              ),
              Gap(Dimentions.height5),
              Text(
                "Please try to Click in Proper Light",
                style: TextStyle(
                    color: Color(0xff7B8D9E),
                    fontWeight: FontWeight.w400,
                    fontSize: Dimentions.font14,
                    fontFamily: "Montserrat"),
              ),
              Gap(Dimentions.height35),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimentions.width28),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(Dimentions.height20),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: Dimentions.height60, left: Dimentions.width10),
                          filled: true,
                          fillColor: Color(0xffF7F0DB),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(Dimentions.height20),
                              borderSide: BorderSide(color: Color(0xffF7F0DB))),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(Dimentions.height20),
                              borderSide: BorderSide(color: Color(0xffF7F0DB))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(Dimentions.height20),
                              borderSide: BorderSide(color: Color(0xffF7F0DB))),
                          hintText: "Write your note here.",
                          hintStyle: TextStyle(
                              color: Color(0xff7B8D9E),
                              fontFamily: "Montserrat",
                              fontSize: Dimentions.font18,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                ),
              ),
              Gap(Dimentions.height20),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: Dimentions.width25),
                child: Row(
                  children: [
                    Text(
                      "Your Vehicles ",
                      style: TextStyle(
                          color: Color(0xff7B8D9E),
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 115,
                child: Row(
                  children: [
                    Flexible(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            itemCount: 4,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, index) {
                              return Container(
                                margin: EdgeInsets.only(left: 17),
                                child: index == 3
                                    ? Container(
                                        width: 66,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 66,
                                              width: 66,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color(0xff6739B7)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          66)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Image.asset(
                                                    "assets/image/fluent_add-square-multiple-16-regular.png"),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Add\nMore",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color(0xff6739B7),
                                                  fontSize: 12,
                                                  fontFamily: "Montserrat"),
                                            )
                                          ],
                                        ),
                                      )
                                    : Container(
                                        width: 71,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 80,
                                              child: Stack(children: [
                                                Positioned(
                                                  top: 5,
                                                  right: 5,
                                                  child: Container(
                                                    height: 66,
                                                    width: 66,
                                                    decoration: BoxDecoration(
                                                        border: index == 0
                                                            ? Border.all(
                                                                color: Color(
                                                                    0xff6739B7))
                                                            : Border(),
                                                        color:
                                                            Color(0xffF0EBF8),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(70)),
                                                    child: Center(
                                                      child: Image.asset(
                                                        "assets/icons/popupcirclecarimage.png",
                                                        height: 39,
                                                        width: 62,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 0,
                                                  right: 0,
                                                  child: Visibility(
                                                    visible: index == 0
                                                        ? true
                                                        : false,
                                                    child: Image.asset(
                                                      "assets/icons/platinumpremium.png",
                                                      height: 30,
                                                      width: 30,
                                                    ),
                                                  ),
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "MH-14-KC 2932",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color(0xff6739B7),
                                                  fontSize: 12,
                                                  fontFamily: "Montserrat"),
                                            )
                                          ],
                                        ),
                                      ),
                              );
                            })),
                  ],
                ),
              ),
              Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: CustomBottonPurple(
                  title: "Submit",
                  height: 56,
                  onClick: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Gap(15),
                                Text(
                                  "REWORK REQUESTED",
                                  style: TextStyle(
                                      color: Color(0xff0E1012),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Montserrat"),
                                ),
                                Gap(8),
                                Text(
                                  "FOR MH-14-KC-2787",
                                  style: TextStyle(
                                      color: Color(0xff83939E),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Montserrat"),
                                ),
                                Gap(25),
                                Material(
                                  elevation: 5,
                                  borderRadius: BorderRadius.circular(83),
                                  child: Container(
                                    height: 83,
                                    width: 83,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(83),
                                        color: Color(0xffDCEDF9)),
                                    child: Center(
                                      child: SvgPicture.asset(
                                          "assets/svg/checksign.svg"),
                                    ),
                                  ),
                                ),
                                Gap(25),
                                Text(
                                  "JUST SIT BACK & RELAX",
                                  style: TextStyle(
                                      color: Color(0xff6739B7),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Montserrat-SemiBold"),
                                ),
                                Gap(10),
                                Text(
                                  "WE WILL NOTIFY THE CLEANER",
                                  style: TextStyle(
                                      color: Color(0xff83939E),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Montserrat-SemiBold"),
                                ),
                                Gap(15),
                                InkWell(
                                  onTap: () {
                                    uploadFeedback(context);
                                  },
                                  child: Container(
                                    height: 33,
                                    width: 193,
                                    decoration: BoxDecoration(
                                        gradient: kPurplegradient,
                                        borderRadius:
                                            BorderRadius.circular(14),
                                        color: Color(0xff6A3ABC)),
                                    child: Center(
                                      child: Text(
                                        "Done",
                                        style: TextStyle(
                                            color: Color(0xffFFFFFF),
                                            fontSize: 14,
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ),
                                  ),
                                ),
                                Gap(10),
                                TextButton(
                                    onPressed: () {
                                      upgradePack(context);
                                    },
                                    child: Text(
                                      "UPGRADE PACK",
                                      style: TextStyle(
                                          color: Color(0xff6739B7),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Montserrat"),
                                    )),
                                Gap(20),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8),
                                  child: Container(
                                    child: Center(
                                      child: Column(
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                                text:
                                                    "2 OUT OF 4 REWORKS REQUESTED, ",
                                                style: TextStyle(
                                                    color: Color(0xff83939E),
                                                    fontWeight:
                                                        FontWeight.w800,
                                                    fontSize: 12,
                                                    fontFamily:
                                                        "Montserrat-SemiBold"),
                                                children: [
                                                  TextSpan(
                                                      text:
                                                          "FOR MORE REQUESTS, ",
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff83939E),
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 12,
                                                          fontFamily:
                                                              "Montserrat")),
                                                  TextSpan(
                                                    text: " - UPGRADE PACK.",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff83939E),
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        fontSize: 12,
                                                        fontFamily:
                                                            "Montserrat"),
                                                  )
                                                ]),
                                            textAlign: TextAlign.center,
                                          ),
                                          Gap(20),
                                          Padding(
                                            padding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 8),
                                            child: Text(
                                                "ENJOY PRIORITY TREATMENT WITH PREMIUM SERVICES.",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color(0xff83939E),
                                                    fontWeight:
                                                        FontWeight.w800,
                                                    fontSize: 12,
                                                    fontFamily:
                                                        "Montserrat")),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        });
                  },
                ),
              ),
              Gap(60),
            ],
          ),
        ),
      ),
    );
  }

  void imagePickerOption() {
    Get.bottomSheet(
      SingleChildScrollView(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10.0),
            topLeft: Radius.circular(10.0),
          ),
          child: Container(
            color: Colors.white,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Pic Image From",
                    style: TextStyle(fontFamily:"Montserrat",fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      pickImage(ImageSource.camera);
                    },
                    icon: const Icon(Icons.camera),
                    label:  Text("CAMERA",style: GoogleFonts.montserrat(),),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      pickImage(ImageSource.gallery);
                    },
                    icon: const Icon(Icons.image),
                    label: Text("GALLERY",style: GoogleFonts.montserrat(),),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.close),
                    label:Text("CANCEL",style: GoogleFonts.montserrat(),),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  pickImage(ImageSource imageType) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageType);
      if (photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
        pickedImage = tempImage;
      });

      Get.back();
    } catch (error) {
      debugPrint(error.toString());
    }
  }
}

void uploadFeedback(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Gap(15),
              Text(
                "UPLOAD FEEDBACK",
                style: TextStyle(
                    color: Color(0xff0E1012),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Montserrat"),
              ),
              Gap(8),
              Text(
                "FOR 13TH MARCH 2022, 10:00 AM",
                style: TextStyle(
                    color: Color(0xff83939E),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Montserrat-SemiBold"),
              ),
              Gap(25),
              Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(83),
                child: Container(
                  height: 83,
                  width: 83,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(83),
                      color: Color(0xffDCEDF9)),
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/svg_icon/fluent_star-12-filled.svg",
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
              ),
              Gap(25),
              Text(
                "HOW WAS THE QUALITY?",
                style: TextStyle(
                    color: Color(0xff6739B7),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Montserrat-SemiBold"),
              ),
              Gap(10),
              Gap(40),
              RatingBar(
                  itemCount: 5,
                  ratingWidget: RatingWidget(
                      full: SvgPicture.asset(
                          "assets/svg_icon/fluent_star-12-filled.svg"),
                      empty: SvgPicture.asset(
                          "assets/svg_icon/fluent_star-12-filled.svg"),
                      half: SvgPicture.asset(
                          "assets/svg_icon/fluent_star-12-filled.svg")),
                  onRatingUpdate: (rating) {}),
              Gap(20),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 33,
                  width: 193,
                  decoration: BoxDecoration(
                      gradient: kPurplegradient,
                      borderRadius: BorderRadius.circular(14),
                      color: Color(0xff6A3ABC)),
                  child: Center(
                    child: Text(
                      "Done",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 14,
                          fontFamily: "Montserrat-Bold",
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    viewDetails(context);
                  },
                  child: Text(
                    "VIEW DETAILS",
                    style: TextStyle(
                        color: Color(0xff6739B7),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Montserrat-Bold"),
                  )),
              Gap(20),
            ],
          ),
        );
      });
}

void viewDetails(BuildContext context) {
  showDialog(

      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Color(0xff6739B7), width: 2)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Gap(20),
                const Text(
                  "UPLOAD FEEDBACK",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Montserrat",
                      fontSize: 20),
                ),
                const Gap(8),
                const Text(
                  "FOR 13TH MARCH 2022, 10:00 AM",
                  style: TextStyle(
                      color: Color(0xff83939E),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Montserrat",
                      fontSize: 12),
                ),
                const Gap(25),
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
                const Gap(20),
                const Text(
                  "HOW WAS THE QUALITY?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff6739B7),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Montserrat",
                      fontSize: 12),
                ),
                const Gap(10),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "OF EXTERIOR SERVICE",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff83939E),
                          fontWeight: FontWeight.w600,
                          fontFamily: "Montserrat",
                          fontSize: 12),
                    ),
                    RatingBar(
                        itemPadding: const EdgeInsets.only(right: 8),
                        itemSize: 20,
                        itemCount: 5,
                        ratingWidget: RatingWidget(
                            full: SvgPicture.asset(
                                "assets/svg_icon/fluent_star-12-filled.svg"),
                            empty: SvgPicture.asset(
                                "assets/svg_icon/fluent_star-12-filled.svg"),
                            half: SvgPicture.asset(
                                "assets/svg_icon/fluent_star-12-filled.svg")),
                        onRatingUpdate: (rating) {}),
                    const Gap(5),
                    const Text(
                      "OF INTERIOR SERVICE",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff83939E),
                          fontWeight: FontWeight.w600,
                          fontFamily: "Montserrat",
                          fontSize: 12),
                    ),
                    RatingBar(
                        itemPadding: EdgeInsets.only(right: 8),
                        itemSize: 20,
                        itemCount: 5,
                        ratingWidget: RatingWidget(
                            full: SvgPicture.asset(
                                "assets/svg_icon/fluent_star-12-filled.svg"),
                            empty: SvgPicture.asset(
                                "assets/svg_icon/fluent_star-12-filled.svg"),
                            half: SvgPicture.asset(
                                "assets/svg_icon/fluent_star-12-filled.svg")),
                        onRatingUpdate: (rating) {}),
                    Gap(5),
                    const Text(
                      "OF REGULARITY OF WORK",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff83939E),
                          fontWeight: FontWeight.w600,
                          fontFamily: "Montserrat",
                          fontSize: 12),
                    ),
                    RatingBar(
                        itemPadding: EdgeInsets.only(right: 8),
                        itemSize: 20,
                        itemCount: 5,
                        ratingWidget: RatingWidget(
                            full: SvgPicture.asset(
                                "assets/svg_icon/fluent_star-12-filled.svg"),
                            empty: SvgPicture.asset(
                                "assets/svg_icon/fluent_star-12-filled.svg"),
                            half: SvgPicture.asset(
                                "assets/svg_icon/fluent_star-12-filled.svg")),
                        onRatingUpdate: (rating) {}),
                    Gap(5),
                    const Text(
                      "OF HIS BEHAVIOUR?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff83939E),
                          fontWeight: FontWeight.w600,
                          fontFamily: "Montserrat",
                          fontSize: 12),
                    ),
                    RatingBar(
                        itemPadding: EdgeInsets.only(right: 8),
                        itemSize: 20,
                        itemCount: 5,
                        ratingWidget: RatingWidget(
                            full: SvgPicture.asset(
                                "assets/svg_icon/fluent_star-12-filled.svg"),
                            empty: SvgPicture.asset(
                                "assets/svg_icon/fluent_star-12-filled.svg"),
                            half: SvgPicture.asset(
                                "assets/svg_icon/fluent_star-12-filled.svg")),
                        onRatingUpdate: (rating) {}),
                    Gap(20),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 33,
                        width: 193,
                        decoration: BoxDecoration(
                            gradient: kPurplegradient,
                            borderRadius: BorderRadius.circular(14),
                            color: Color(0xff6A3ABC)),
                        child: Center(
                          child: Text(
                            "Done",
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 14,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(20)
              ],
            ),
          ),
        );
      });
}

void upgradePack(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Container(
            
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Gap(15),
                Text(
                  "UPLOAD FEEDBACK",
                  style: TextStyle(
                      color: Color(0xff0E1012),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Montserrat-Bold"),
                ),
                Gap(8),
                Text(
                  "FOR 13TH MARCH 2022, 10:00 AM",
                  style: TextStyle(
                      color: Color(0xff83939E),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Montserrat"),
                ),
                Gap(25),
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(83),
                  child: Container(
                    height: 83,
                    width: 83,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(83),
                        color: Color(0xffDCEDF9)),
                    child: Center(
                      child: SvgPicture.asset("assets/svg/checksign.svg"),
                    ),
                  ),
                ),
                Gap(25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 27),
                  child: Text(
                    "PLEASE CONFIRM THE SERVICES DELIVERED",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff6739B7),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Montserrat-SemiBold"),
                  ),
                ),
                Gap(10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "INTERIOR SERVICE",
                        style:
                            ksubHeading.copyWith(fontWeight: FontWeight.w600),
                      ),
                      SvgPicture.asset("assets/svg_icon/charm_cross.svg"),
                      SvgPicture.asset(
                          "assets/svg_icon/fluent_checkmark-24-filled.svg")
                    ],
                  ),
                ),
                Gap(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "TYRE SERVICE",
                        style:
                            ksubHeading.copyWith(fontWeight: FontWeight.w600),
                      ),
                      SvgPicture.asset("assets/svg_icon/charm_cross.svg"),
                      SvgPicture.asset(
                          "assets/svg_icon/fluent_checkmark-24-filled.svg")
                    ],
                  ),
                ),
                Gap(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "WIPER SERVICE",
                        style:
                            ksubHeading.copyWith(fontWeight: FontWeight.w600),
                      ),
                      SvgPicture.asset("assets/svg_icon/charm_cross.svg"),
                      SvgPicture.asset(
                          "assets/svg_icon/fluent_checkmark-24-filled.svg")
                    ],
                  ),
                ),
                Gap(20),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 193,
                    decoration: BoxDecoration(
                        gradient: kPurplegradient,
                        borderRadius: BorderRadius.circular(14),
                        color: Color(0xff6A3ABC)),
                    child: Center(
                      child: Text(
                        "DONE",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 14,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                ),
                Gap(10),
              ],
            ),
          ),
        );
      });
}
