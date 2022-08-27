import 'dart:ffi';

import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatelessWidget {
  String hinttext;
  String image;
  String? Function(String?)? kvalidator;
  TextInputType keyboardtype;

  CustomTextField({
    Key? key,
    required this.keyboardtype,
    required this.hinttext,
    required this.image,
    required this.controller,
    required this.kvalidator
  }) : super(key: key);
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(Dimentions.height14),
      elevation: 5,
      child: Container(
        width: double.maxFinite,
        height: Dimentions.height56,
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
        child: TextFormField(
          keyboardType: keyboardtype,
          controller: controller,
          validator: kvalidator,
          decoration: InputDecoration(


            hintText: hinttext,
            hintStyle: ksubHeading.copyWith(
                fontSize: Dimentions.font20, fontWeight: FontWeight.w400),
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimentions.width15),
              child: SvgPicture.asset(image),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimentions.height14),
                borderSide: BorderSide(
                  color: Colors.white,
                )),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimentions.height14),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
