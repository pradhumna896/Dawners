import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarBackButton extends StatelessWidget {
  VoidCallback onclick;
  AppBarBackButton({
    Key? key,required this.onclick
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onclick,
      child: Padding(
        padding:  EdgeInsets.all(Dimentions.height8),
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(Dimentions.height15),
          child: Container(
            height: Dimentions.height44,
            width: Dimentions.width44,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffD7DEEA), width: 1),
                borderRadius: BorderRadius.circular(Dimentions.height15)),
            child: Center(
                child: SvgPicture.asset(
                  "assets/image/backarrow.svg",
                  color: Color(0xff7B8D9E),
                )),
          ),
        ),
      ),
    );
  }
}