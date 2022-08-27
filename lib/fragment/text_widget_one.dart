import 'package:dawners/provider/app_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class TextWidgetOne extends StatelessWidget {
  const TextWidgetOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<AppController>(context);
    return const Text(
      "Add Vehicle",
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Color(0xff0E1012),
          fontSize: 18,
          fontFamily: "Montserrat-Bold",
          fontWeight: FontWeight.w700),
    );
  }
}

class TextWidgetTwo extends StatelessWidget {
  const TextWidgetTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<AppController>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(16),
            child: Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffD7DEEA), width: 1),
                  borderRadius: BorderRadius.circular(16)),
              child: Center(child: SvgPicture.asset("assets/image/backarrow.svg")),
            ),
          ),
          // SizedBox(width: 30,),

          Text(
            "Choose Package",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xff0E1012),
                fontSize: 18,
                fontFamily: "Montserrat-Bold",
                fontWeight: FontWeight.w700),
          ),
          Container(

            height: 40,
            width: 40,
          )
        ],
      ),
    );
  }
}

class TextWidgetThree extends StatelessWidget {
  const TextWidgetThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<AppController>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(16),
            child: Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffD7DEEA), width: 1),
                  borderRadius: BorderRadius.circular(16)),
              child: Center(child: SvgPicture.asset("assets/image/backarrow.svg")),
            ),
          )
         ,
          Text(
            "Preferred Start Date",
            style: TextStyle(
                color: Color(0xff0E1012),
                fontSize: 18,
                fontFamily: "Montserrat-Bold",
                fontWeight: FontWeight.w700),
          ),
          Container(height: 44,width: 44,)
        ],
      ),
    );
  }
}

class TextWidgetFour extends StatefulWidget {
  const TextWidgetFour({Key? key}) : super(key: key);

  @override
  State<TextWidgetFour> createState() => _TextWidgetFourState();
}

class _TextWidgetFourState extends State<TextWidgetFour> {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<AppController>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(16),
            child: Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffD7DEEA), width: 1),
                  borderRadius: BorderRadius.circular(16)),
              child: Center(child: SvgPicture.asset("assets/image/backarrow.svg")),
            ),
          ),

          Text("Add Address",
              style: TextStyle(
                  color: Color(0xff0E1012),
                  fontSize: 18,
                  fontFamily: "Montserrat-Bold",
                  fontWeight: FontWeight.w700)),
          Container(height: 44,width: 44,)
        ],
      ),
    );
  }
}
