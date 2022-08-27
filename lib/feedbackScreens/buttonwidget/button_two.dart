import 'package:dawners/provider/card_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class ButtonTwo extends StatelessWidget {
  const ButtonTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final data= Provider.of<CardController>(context);
    return   InkWell(
      onTap: (){
        data.reviewDetalOnePage(2);
      },


      child: Container(
        height: 33,
        width: 192,
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
          borderRadius: BorderRadius.circular(14),
        ),
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
