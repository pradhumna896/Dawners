import 'package:dawners/screens/helper/dimentions/dimentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ToolBar extends StatelessWidget {
  String text;
  ToolBar({
    Key? key,required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: Dimentions.height44,
            width: Dimentions.width44,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffD7DEEA), width: 1),
                borderRadius: BorderRadius.circular(Dimentions.height15)),
            child: Center(
                child: SvgPicture.asset(
              "assets/image/backarrow.svg",
              color: Color(0xffFFFFFF),
            )),
          ),
        ),
        Text(
          text,
          style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: Dimentions.height18,
              fontWeight: FontWeight.w700,
              fontFamily: "Montserrat"),
        ),
        InkWell(
          onTap: () {
            showDialog(
                barrierColor: Colors.transparent,
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Dimentions.height15
                        )),
                    child: Container(

                      width: double.maxFinite,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: Dimentions.height20,
                          ),
                          Text(
                            "Help & Support",
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: Dimentions.font17,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: Dimentions.height10,
                          ),
                          Text(
                            "we are always available for you ",
                            style: TextStyle(
                                color: Color(0xff83939E),
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Montserrat"),

                          ),
                          SizedBox(height: 43,),
                          Material(
                            borderRadius: BorderRadius.circular(87),
                            elevation: 5,
                            child: Container(
                              height: 87,
                              width: 87,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(87),
                                  color: Color(0xffDCEDF9)),
                              child: Center(
                                child: SvgPicture.asset(
                                    "assets/svg_icon/suport-person.svg"),
                              ),
                            ),
                          ),
                          SizedBox(height: 42,),
                          const Text("+ 91 1548484814",style: TextStyle(
                              fontSize: 24,
                              color: Color(0xff000000),
                          fontFamily: "Montserrat-SemiBold"
                          ),),
                          SizedBox(height: 30,),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 35,
                                 width: 192,
                                 decoration: BoxDecoration(
                                   color: Color(0xff6739B7),
                                   borderRadius: BorderRadius.circular(14)
                                 ),

                                 child: Center(child: Text("Call",
                                     style: TextStyle
                                       (color: Color(0xffFFFFFF),
                                         fontSize: 14,
                                         fontFamily: "NunitoSans-Bold",
                                         fontWeight: FontWeight.w700
                                     )
                                 ))),
                          ),
                          TextButton(onPressed: (){}, child: Text("Not Now",
                            style: TextStyle
                              (color: Color(0xff6739B7),
                            fontSize: 14,
                              fontFamily: "Montserrat-Bold",
                              fontWeight: FontWeight.w700
                            ),))
                        ],
                      ),
                    ),
                  );
                });
          },
          child: Container(
            height: Dimentions.height44,
            width: Dimentions.width44,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffD7DEEA), width: 1),
                borderRadius: BorderRadius.circular(Dimentions.height15)),
            child: Center(
                child: SvgPicture.asset(
              "assets/svg/contactnumber.svg",
              color: Color(0xffFFFFFF),
            )),
          ),
        ),
      ],
    );
  }
}
