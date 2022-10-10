import 'package:dawners/HomeScreen/custumer_home_screen.dart';
import 'package:dawners/helper/ktext_class.dart';
import 'package:dawners/screens/bottombar/bottom_app_bar.dart';
import 'package:flutter/material.dart';
class ButtonFour extends StatelessWidget {
  const ButtonFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (ctx)=>CurveAppBar()));
      },
      child: Container(
        height: 45,
        width: 192,
        decoration: BoxDecoration(
            gradient: kPurplegradient,
            borderRadius: BorderRadius.circular(14),
            color: Color(0xff6A3ABC)),
        child: Center(
          child: Text(
            "Submit",
            style: TextStyle(
                color: Color(0xffFFFFFF),
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700,
                fontSize: 16),
          ),
        ),
      ),
    );
  }
}
