import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String text;

  VoidCallback onclick;

  CustomButton({Key? key, required this.text, required this.onclick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onclick,
      child: Container(
          width: double.maxFinite,
          height:Dimentions.height56,
          decoration: BoxDecoration(
            color: Color(0xffFAA53A),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                // stops: [0.3,0.6,0.9],
                colors: [
                  Color(0xffFAA53A),
                  Color(0xffFE8E00),
                  Color(0xffFE8E00),
                  Color(0xffC06B00),
                ]),
            borderRadius: BorderRadius.circular(Dimentions.height14),
          ),
          child: Center(
              child: Text(
            text,
            style: ksubHeading.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: Dimentions.font24,
                color: Color(0xffFFFFFF)),
          ))),
    );
  }
}
