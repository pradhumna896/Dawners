import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:flutter/material.dart';

class KTextClass{
  static  TextStyle AppBarStyle = TextStyle(color: Color(0xff0E1012),
    fontSize: Dimentions.font18,fontFamily: "Montserrat",
    fontWeight: FontWeight.w700
  );
}
const ksubHeading = TextStyle(
    color: Color(0xff7B8D9E),
    fontSize: 12,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w800);
const kOrangeButtonGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomLeft,
      // stops: [0.3,0.6,0.9],
      colors: [

        Color(0xffFAA53A),
        Color(0xffFE8E00),
        Color(0xffFE8E00),
        Color(0xffC06B00),


      ]


);



const kPurplegradient = LinearGradient(
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
  colors: [
    Color(0xff311B92),
    Color(0xff6739B7),
    Color(0xff6739B7),
    Color(0xff6739B7),
  ],
);

