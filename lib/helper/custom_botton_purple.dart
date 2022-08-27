import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:flutter/material.dart';
class CustomBottonPurple extends StatelessWidget {
  String title;
  VoidCallback onClick;
  double height;
  double textsize;


   CustomBottonPurple({
    Key? key,required this.title,required this.onClick,required this.height,this.textsize=24
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onClick,
      child: Container(
        width: double.maxFinite,
        height: height,
        decoration: BoxDecoration(
            gradient:  kPurplegradient,
            borderRadius: BorderRadius.circular(Dimentions.height14),
            color: Color(0xff6A3ABC)),
        child: Center(
          child: Text(
            title,
            style:ksubHeading.copyWith(color: Color(0xffFFFFFF),fontWeight: FontWeight.w800,fontSize:Dimentions.font24),
          ),
        ),
      ),
    );
  }
}