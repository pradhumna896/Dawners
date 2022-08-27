import 'package:dawners/provider/card_controller.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
class ButtonOne extends StatelessWidget {
  const ButtonOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data= Provider.of<CardController>(context);
    return Column(children: [
      Text(
        "HAVE YOU USED HIS SERVICES BEFORE?",
        style: TextStyle(
            color: Color(0xff83939E),
            fontWeight: FontWeight.w600,
            fontFamily: "Montserrat-SemiBold",
            fontSize: 12),
      ),
      Gap(14),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 31,
            width: 91,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                    color: Color(0xffFE8E00), width: 2)),
            child: Center(
              child: Text(
                "NO",
                style: TextStyle(
                    color: Color(0xffFE8E00),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Montserrat-Bold"),
              ),
            ),
          ),
          Gap(10),
          InkWell(
            onTap: (){
              data.reviewDetalOnePage(1);
            },
            child: Container(
              height: 31,
              width: 91,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                      color: Color(0xffFE8E00), width: 2)),
              child: Center(
                child: Text(
                  "YES",
                  style: TextStyle(
                      color: Color(0xffFE8E00),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Montserrat-Bold"),
                ),
              ),
            ),
          )
        ],
      )
    ],);
  }
}
