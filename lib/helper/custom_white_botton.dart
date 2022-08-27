import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class CustomWhiteButton extends StatelessWidget {
  const CustomWhiteButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(Dimentions.height14),
      elevation: 5,
      child: Container(
        height: Dimentions.height56,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              // stops: [0.3,0.6,0.9],
              colors: [
                Color(0xffC1C1C1),
                Color(0xffFFFFFF),
                Color(0xffFFFFFF),
                Color(0xffFFFFFF),
                Color(0xffFFFFFF),
                Color(0xffC1C1C1),
              ]),
          borderRadius: BorderRadius.circular(Dimentions.height14),
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: Dimentions.width23),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(),
              Text(
                "Select Vehicles",
                style: TextStyle(
                    color: Color(0xffFE8E00),
                    fontFamily: "Montserrat",
                    fontSize: Dimentions.font24,
                    fontWeight: FontWeight.w800),
              ),
              Spacer(),
              SvgPicture.asset(
                  "assets/svg_icon/dropdowniconorange.svg")
            ],
          ),
        ),
      ),
    );
  }
}