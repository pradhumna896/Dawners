import 'package:dawners/helper/appbar_back_button.dart';
import 'package:dawners/helper/custom_botton_purple.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawersMyIdea extends StatelessWidget {
  const DrawersMyIdea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: Dimentions.width20,vertical: Dimentions.height20),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppBarBackButton(onclick: () {

                        Navigator.pop(context);
                      }),
                      Text(
                        "My Ideas",
                        style: KTextClass.AppBarStyle,
                      ),
                      SvgPicture.asset("assets/drawersicons/volve.svg")
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(Dimentions.height26),
                        elevation: 5,
                        child: Container(
                          height: Dimentions.height183,
                          width: Dimentions.width183,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimentions.height26),
                              color: Color(0xffFAF0DB)),
                          child: Center(
                            child: SvgPicture.asset(
                                "assets/svg/fluent_camera-add-48-filled.svg"),
                          ),
                        ),
                      ),
                      Gap(Dimentions.height12),
                      Text(
                        "Upload Picture",
                        style: GoogleFonts.montserrat(
                            fontSize: Dimentions.font22,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff0E1012)),
                      ),
                      Gap(Dimentions.height6),
                      Text(
                        "For Reference - any screenshot or image.",
                        style: GoogleFonts.montserrat(
                          fontSize: Dimentions.font14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff7B8D9E),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                children: [
                    Gap(Dimentions.height33),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(Dimentions.height20),
                      child: SizedBox(
                        width: double.maxFinite,
                        // decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(25),
                        //     color: Color(0xffF7F0DB)),
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(bottom: 60, left: 10),
                              filled: true,
                              fillColor: Color(0xffF7F0DB),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(Dimentions.height20),
                                  borderSide:
                                      BorderSide(color: Color(0xffF7F0DB))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(Dimentions.height20),
                                  borderSide:
                                      BorderSide(color: Color(0xffF7F0DB))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(Dimentions.height20),
                                  borderSide:
                                      BorderSide(color: Color(0xffF7F0DB))),
                              hintText: "Write your note here.",
                              hintStyle: TextStyle(
                                  color: Color(0xff7B8D9E),
                                  fontFamily: "Montserrat",
                                  fontSize: Dimentions.font18,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                    ),
                    Gap(Dimentions.height20),
                    CustomBottonPurple(
                        title: "Submit",
                        onClick: () {
                          ideaSubmittedPopUp(context);
                        },
                        height: Dimentions.height56)
                ],
              ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

void ideaSubmittedPopUp(BuildContext context) {
  showDialog(
    barrierColor: Colors.black87,
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimentions.height14)),
            child: Column(
              children: [
                Gap(Dimentions.height15),
                Text(
                  "IDEA SUBMMITED",
                  style: GoogleFonts.montserrat(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      fontSize: Dimentions.font20),
                ),
                Padding(
                  padding:

                      EdgeInsets.symmetric(horizontal: Dimentions.width10, vertical: Dimentions.height5),
                  child: Text(
                    "THANK YOU FOR HELPING US TO HELP YOU!",
                    textAlign: TextAlign.center,
                    style: ksubHeading.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                Gap(Dimentions.height25),
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(Dimentions.height83),
                  child: Container(
                    height:Dimentions.height83,
                    width: Dimentions.height83,
                    decoration: BoxDecoration(
                        color: Color(0xffDCEDF9),
                        borderRadius: BorderRadius.circular(Dimentions.height83)),
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/svg_icon/cleanercheckicon.svg",
                        height: Dimentions.height44,
                        width: Dimentions.width44,
                      ),
                    ),
                  ),
                ),
                Gap(Dimentions.height25),
                Text(
                  "YOUR VOICE HAS BEEN HEARD",
                  style: GoogleFonts.montserrat(
                      color: Color(0xff6739B7),
                      fontWeight: FontWeight.w600,
                      fontSize: Dimentions.font12),
                ),
                Gap(Dimentions.height10),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: Dimentions.width10),
                  child: Text(
                    "OUR TEAM WILL WORK ON YOUR  INPUT TO MAKE IT BETTER EXPEREINCE FOR YOU",
                    textAlign: TextAlign.center,
                    style: ksubHeading.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                Gap(Dimentions.height15),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal:Dimentions.width56),
                  child: CustomBottonPurple(
                    title: "Done",
                    onClick: () {},
                    height: Dimentions.height33,
                    textsize: Dimentions.font14,
                  ),
                )
              ],
            ),
          ),
        );
      });
}
