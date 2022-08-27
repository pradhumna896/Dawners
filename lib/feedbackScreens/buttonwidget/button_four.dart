import 'package:dawners/HomeScreen/custumer_home_screen.dart';
import 'package:flutter/material.dart';
class ButtonFour extends StatelessWidget {
  const ButtonFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (ctx)=>CustomerHomeScreen()));
      },
      child: Container(
        height: 33,
        width: 192,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                // stops: [0.3,0.6,0.9],
                colors: [
                  Color(0xff4F2C8C),
                  Color(0xff6739B7),
                  Color(0xff8A68C6),
                  Color(0xff8A68C6),
                ]),
            borderRadius: BorderRadius.circular(14),
            color: Color(0xff6A3ABC)),
        child: Center(
          child: Text(
            "Submit",
            style: TextStyle(
                color: Color(0xffFFFFFF),
                fontFamily: "Montserrat-Bold",
                fontWeight: FontWeight.w700,
                fontSize: 14),
          ),
        ),
      ),
    );
  }
}
